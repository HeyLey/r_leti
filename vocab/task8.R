select_by_ed <- function(ed) {
  v = vocab[vocab$education == ed,]
  years <- sort(unique(v$year))
  
  data = rep(0, length(years))
  
  for (i in 1:length(years)) {
    data[i] <- mean(v[v$year == years[i], ]$vocabulary)
  }
  
  return(data.frame(years, data))
}

task7 <- function(vocab) {
  selected <- select_by_ed(0)
  plot(selected$years, selected$data, t='l', xlab = "Год исследования", ylab = "Словарный запас")
  colors = rainbow(20)
  for (i in 1:20) {
    selected <- select_by_ed(i)
    lines(selected$years, selected$data, t='l', col=colors[i])
  }
}