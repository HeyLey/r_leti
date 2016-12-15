# В этом блоке напишите один скрипт (не функцию) task.R,
# со следующими действиями:
# mtcars — это встроенный в R дата фрейм с информацией о моделях машин.
# Выведите его содержимое на экран, скопируйте в переменную cars

print(mtcars)
cars = mtcars


# Добавьте в него (в переменную cars) столбец kpl (километров в литре),
# используйте для вычисления столбец mpg (миль в галлоне)

cars$kpl = 0.4251 * cars$mpg


# Отберите все машины с лошадиной силой (столбец hp) более 200.
print(cars[cars$hp > 200, ])


# Выведите график с зависимостью hp (лошадиных сил) от kpl (км в литре).
# Это график из нескольких точек в осях hp и kpl. 
# Установите содержательные подписи к осям.

plot(cars$hp, cars$kpl, xlab = "horsepower", ylab = "km / liter")


# Создайте копию дата фрейма cars, в котором оставлены только столбцы hp,
# kpl и wt (вес в тысячах тоннах, используйте для этого исходный столбец wt, 
# который содержит вес в тысячах фунтов).

cars_copy = cars[c("hp", "kpl", "wt")] 


# Передайте эту копию в качестве единственного аргумента функции plot.

plot(cars_copy)


# Что вы видите на построенном графике?

# Чем больше лошадиных сил, тем меньше километров на литр проезжает машина.
# Чем больше вес, тем меньше километров на литр проезжает машина.
# Чем больше вес, тем больше лошадиных сил.

#-------------------------------------------------------------------------------------------

# Создайте новый дата фрейм про шарики. У него должно быть два столбца size и color. 
# Первый — это фактор с уровнями "big", "small", 
# второй — фактор с уровнями "red", "green", "blue". 
# Заполните фрейм тысячей случайных значений. 


balls = data.frame(
  size=factor(sample(c("big", "small"), 1000, replace = T)),
  color=factor(sample(c("red", "green", "blue"), 1000, replace = T)))


# Сколько в нем больших зеленых шариков? 

print(sum(balls$size == 'big' & balls$color=="green"))


# Примените к полученному дата фрейму функцию table, функцию summary, функцию plot.

table(balls)
summary(balls)
plot(balls)


# Добавьте столбик weight (вес), это должны быть нормально распределенные случайные числа, 
# причем при генерации чисел используйте разные мат. ожидания для шариков разных размеров. 

balls$weight = rnorm(1000,c(20,10)[balls$size])


# Снова вызовите функции table, summary, plot для полученного фрейма. 

table(balls)
summary(balls)
plot(balls)


# Что они показывают?

# table   : 
#      table uses the cross-classifying factors 
#      to build a contingency table of the counts 
#      at each combination of factor levels.
 
# summary :
#      summary is a generic function used 
#      to produce result summaries of the results 
#      of various model fitting functions.

# plot    :
#      plotting of R objects.
