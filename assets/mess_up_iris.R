library(tidyr)
library(readr)
iris_mess <- unite(iris, Sepal.Length_Sepal.Width, Sepal.Length, Sepal.Width) %>%
  unite(Petal.Length_Petal.Width, Petal.Length, Petal.Width) %>%
  gather(measurement, value, -Species)

write.csv(iris_mess, file="iris.csv", row.names = FALSE)
