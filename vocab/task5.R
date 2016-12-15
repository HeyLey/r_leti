source("task4.R")
task5 <- function(vocab) {
  vocab.means <- task4(vocab)
  barplot(vocab.means)
}