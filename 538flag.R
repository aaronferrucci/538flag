m <- 0
n <- 0
lastprint <- 100
done <- 0
find <- 3
for (i in 0:1000) {
  flag <- ""
  ts <- 2*m*m
  cp <- (5*n*n + 5*n + 2) / 2
  # print any that are not larger
  if (ts <= cp) {
    if (ts == lastprint + 1) 
      flag <- " *"
    print(sprintf("%d    twosquare(%d)%s", ts, m, flag), quote=F)
    m <- m + 1
    lastprint <- ts
  }
  if (cp <= ts) {
    if (cp == lastprint + 1) {
      flag <- " +"
      find <- find - 1
      if (find == 0)
        done <- 1
    }
    print(sprintf("%d    centpent(%d)%s", cp, n, flag), quote=F)
    n <- n + 1
    lastprint <- cp
  }
  
  if (done)
    break
}