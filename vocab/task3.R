task3 <- function(vocab) {
  cat("mean vocabulary: ", mean(vocab$vocabulary), "\n")
  cat("mean male    vocabulary: ", mean(vocab[vocab$sex == 'Male',]$vocabulary), "\n")
  cat("mean female vocabulary: ", mean(vocab[vocab$sex == 'Female',]$vocabulary), "\n")
}