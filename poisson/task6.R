
source("task2.R")
source("task3.R")
source("task4.R")


task6 <- function() {
  events = task2(1000, 5)
  counts = task3(events)
  par(mfrow=c(2,1)) 
  
  plot(table(counts) / length(counts), ylab=NA)
  lines((0:20), dpois(0:20, 5), col='red')
  
  intervals = task4(events)
  
  hist(intervals, 30, freq = F, main=NA)
  lines(seq(0, 2, 0.1), dexp(seq(0, 2, 0.1), 5),  col="red")
  
  # Второе распределение - равномерное
  # Первое - не знаю
}