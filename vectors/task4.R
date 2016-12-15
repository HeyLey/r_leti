# Дано целое число steps, 
# сгенерируйте вектор длины steps состоящий из чисел 1 и -1. 
# Верните сумму чисел. 

task4 <- function(steps) {  
  x = sample(c(-1, 1), steps, TRUE)
  return(sum(x))
}

# task4(50)
