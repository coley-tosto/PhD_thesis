par(mfrow=c(1,2))
hist(colSums(counts(ddsMF_FL_exp[,ddsMF_FL_exp$Sex=="F"], 
                    normalized=TRUE)),
     main = "Females",
     ylab = "Number of samples",
     xlab = "Total # reads in a sample")
legend("topright",
       c("total # reads:",
         round(sum(colSums(counts(ddsMF_FL_exp[,ddsMF_FL_exp$Sex=="F"], 
                                  normalized=TRUE))),
               0)
       )
       #bty='n'
)
hist(colSums(counts(ddsMF_FL_exp[,ddsMF_FL_exp$Sex=="M"], 
                    normalized=TRUE)),
     main = "Males",
     ylab = "Number of samples",
     xlab = "Total # reads in a sample")
legend("topright",
       c("total # reads:",
         round(sum(colSums(counts(ddsMF_FL_exp[,ddsMF_FL_exp$Sex=="M"], normalized=TRUE))),0)
       )
       #bty='n'
)

cbind(samples,normalizedReads=colSums(counts(ddsMF_FL_exp, normalized=TRUE)))

#TRINITY_DN0_c0_g1 1801.1920      0.2041304


tmp1<-counts(ddsMF_FL_exp)
tmp1L<-tmp1[rownames(tmp1) =="TRINITY_DN0_c0_g1",c("FLL2F7", "FLL3F1" ,"FLL3F2" ,"FLL3F4", "FLL3M5", "FLL3M7", "FLL3M8","FLL4M3" ,"FLL4M4" ,"FLL8F3")]
log(mean(tmp1L[grep("M",names(tmp1L))])/mean(tmp1L[grep("M",names(tmp1L), invert=TRUE)]), base = 2)
[1] 0.6387208

tmp1<-counts(ddsMF_FL_exp, normalized=TRUE)
tmp1L<-tmp1[rownames(tmp1) =="TRINITY_DN0_c0_g1",c("FLL2F7", "FLL3F1" ,"FLL3F2" ,"FLL3F4", "FLL3M5", "FLL3M7", "FLL3M8","FLL4M3" ,"FLL4M4" ,"FLL8F3")]
log(mean(tmp1L[grep("M",names(tmp1L))])/mean(tmp1L[grep("M",names(tmp1L), invert=TRUE)]), base = 2)


raw_counts<-counts(ddsMF_FL_exp)
raw_counts[which(rowSums(raw_counts)>10000000),]

norm_counts<-counts(ddsMF_FL_exp, normalized=TRUE)
norm_counts[which(rowSums(norm_counts)>10000000),]

plot(norm_counts[which(rowSums(norm_counts)>10000000),][1,],xaxt='n',xlab="")
axis(1,labels = colnames(norm_counts),las=3,at=1:ncol(norm_counts))

plot(raw_counts[rownames(raw_counts)=="TRINITY_DN2603_c1_g3",],
     norm_counts[rownames(norm_counts)=="TRINITY_DN2603_c1_g3",])

