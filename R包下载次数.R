rm(list=ls())
library(cranlogs)
library(ggplot2)
#How many overall downloads
mls <- cran_downloads(packages="QCSIS", from = "2015-12-01", to = Sys.Date())
sum(mls[,2])

par(family='STKaiti')#显示中文
plot(mls$date, mls$count,xlab = "",ylab="下载次数")
