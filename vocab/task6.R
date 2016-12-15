source("task4.R")
task6 <- function(vocab) {
  vocab.means.male <- task4(vocab[vocab$sex == 'Male',])
  vocab.means.female <- task4(vocab[vocab$sex == 'Female',])
  barplot(rbind(vocab.means.male, vocab.means.female), 
          col=c("darkblue","red"), 
          beside=TRUE)
}