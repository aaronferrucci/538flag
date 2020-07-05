m <- 0
n <- 0
lastprint <- 100
done <- 0
find <- 3
for (i in 0:1000) {
  ts <- 2*m*m
  cp <- (5*n*n + 5*n + 2) / 2
  # print any that are not larger
  if (ts <= cp) {
    print(sprintf("%d    twosquare(%d)%s", ts, m, ifelse(ts == lastprint + 1, " *", "")), quote=F)
    m <- m + 1
    lastprint <- ts
  }
  if (cp <= ts) {
    if (cp == lastprint + 1) {
      find <- find - 1
      if (find == 0)
        done <- 1
    }
    print(sprintf("%d    centpent(%d)%s", cp, n, ifelse(cp == lastprint + 1, " +", "")), quote=F)
    n <- n + 1
    lastprint <- cp
  }
  
  if (done)
    break
}

library(ggplot2)
base <- ggplot() + xlim(0, 6)
base + geom_function(fun=function(x) 2*x*x) + geom_function(fun=function(x) (5*x*x + 5*x + 2) / 2)

