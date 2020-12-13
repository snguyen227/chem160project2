dim<-c() 
for (n in 1:30) {
  dists<-c()
  for (i in 1:10000) {
    P1<-runif(n)
    P2<-runif(n)
    dist<-sqrt(sum((P1-P2)^2))
    dists<-c(dists, dist)
  }
  mean.dist<-mean(dists)
  dim<-c(dim, mean.dist)
}
plot(dim, main= "Average Distance vs Number of Dimensions", xlab="Number of Dimensions", ylab="Average Distance")

