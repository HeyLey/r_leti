# Дан вектор и число k. Удалите из вектора все вхождения этого числа.

task3 <- function(vec, k) {
  vec = vec[vec != k]
  return(vec)
}

# v = rep(1:5, 5)
# task3(v, 2)