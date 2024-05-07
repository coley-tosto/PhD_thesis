library(tximport)

samples <- read.table("FL_samples.txt", header = TRUE)
samples_gonad <- samples[samples$Organ == "Gonad",]
files <- c(list.files("data/floridae_expression_files",
                      pattern = "FLO", full.names = TRUE),
           list.files("data/floridae_expression_files",
                      pattern = "FLT", full.names = TRUE))
names(files) <- paste0(samples_gonad$ID)
all(file.exists(files))

gtf <- read.table("trinity_supertran_floridae.gtf", header = FALSE)
tx2gene <- gtf[,c(10, 10)] 
tx2gene <- unique(tx2gene)
colnames(tx2gene) <- c("gene_id", "transcript_id")

txi.salmon.FL_gonads <- tximport(files, type = "salmon", tx2gene = tx2gene)
head(txi.salmon.FL_gonads$counts)
saveRDS(txi.salmon.FL_gonads, "txi.salmon_FLgonads.RDS")

#DESeq Analysis
txi.salmonFLgonads <- readRDS("data/txi.salmon_FLgonads.RDS")
samples_gonad$Sex <- as.factor(samples_gonad$Sex)

dds_FLgonads <- DESeqDataSetFromTximport(txi.salmonFLgonads,
                                         colData = samples_gonad,
                                         design = ~ Sex)
#only keeping rows that have at lead 10 reads total
keep <- rowSums(counts(dds_FLgonads)) >= 10 & rowSums(counts(dds_FLgonads)) < 1e4

dds_FLgonads <- dds_FLgonads[keep, ]


#Generate the expression values
dds_FLgonads_exp <- DESeq(dds_FLgonads)
res <- results(dds_FLgonads_exp, alpha = 0.05)
summary(res)

sum(res$padj <= 0.05 & res$log2FoldChange >= 2, na.rm = TRUE)
sum(res$padj <= 0.05 & res$log2FoldChange <= -2, na.rm = TRUE)
