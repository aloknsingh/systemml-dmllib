coinWeights <- c(.65,.35)
 
prior <- c(1,1)

scnt=100 
numFlips <- scnt
 
flips <- sample(1:2, numFlips, prob=coinWeights, replace=TRUE)
print(flips)
 
betaDist <- function(alphaBeta) {
  function(x) {
    dbeta(x, alphaBeta[1], alphaBeta[2])
  }
}
 
colors <- rainbow(numFlips)
 
plot(betaDist(prior), xlim=c(0,1), ylim=c(0,scnt/5), xlab="", ylab="")
for (n in 1:numFlips) {
  prior[flips[n]] <- prior[flips[n]] + 1
  func <- betaDist(prior)
  curve(func, from=0, to=1, add=TRUE, col=colors[n])
  Sys.sleep(0.5)
}

 
legend("topleft", legend=c("prior",paste("flip",c("H","T")[flips])), col=c("#000000",colors), lwd=1)
