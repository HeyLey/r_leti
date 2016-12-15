task7 <- function(vocab) {
  vocab.male <- vocab[vocab$sex == 'Male' & vocab$education == 20,]$vocabulary
  vocab.female <- vocab[vocab$sex == 'Female' & vocab$education == 20,]$vocabulary
  t.test(vocab.male, vocab.female)
}