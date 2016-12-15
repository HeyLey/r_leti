# Даны целые числа n и size, 
# создайте вектор из повторяющихся чисел от 1 до n размера size 

task1 <- function(n, size) {
  vec = c(1:n)
  res = rep(vec, ceiling(size/length(vec)))
  res_ = res[1:size]
  return(res_)
}

# task1(3, 10)