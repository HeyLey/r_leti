# Дано целое число n, запустите предыдущую задачу n раз, 
# получите n точек и изобразите их на графике.
source("task6.R")

task7 <- function(n) {
  p = task6(n)
  for(i in c(2:n)) {
    p = rbind(p, task6(n))
  }
  plot(p[,1], p[, 2])
}