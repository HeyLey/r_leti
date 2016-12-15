# Даны целые числа n и size. 
# С помощью функции sample сгенерируйте вектор 
# из случайных целых чисел от 1 до n. 
# С помощью функции table выведите на экран, 
# сколько раз сгенирировалась какая функция.

task2 <- function(n, size) {
  vec = sample(n, size, replace=TRUE)
  tab = table(vec)
  print(tab)
}

# task2(5, 17)