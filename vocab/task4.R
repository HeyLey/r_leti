task4 <- function(vocab) {
  education = sort(unique(vocab$education))
  vocab.means <- rep(0, length(education))
  for (i in 1:length(education)) {
    names(vocab.means)[i] = paste(education[i], "лет")
    vocab.means[i] <-mean(vocab[vocab$education == education[i],]$vocabulary)
  }
  return(vocab.means)
}