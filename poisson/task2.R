# Даны числа T и lambda (смысл аналогичен прошлому заданию). 
# Сгенерируйте вектор с моментами событий. 
# Для этого генерируйте размеры интервалов между событиями. 
# Как равномерно распределенные числа на интервале от 0 до 2/lambda.


task2 <- function(t, lambda) {
  max.size = floor(t * lambda * 2)
  intervals = runif(max.size, 0, 2/lambda)
  times = cumsum(intervals)
  return(times[times <= t])
}