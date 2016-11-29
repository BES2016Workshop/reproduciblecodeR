library(tidyr)
library(dplyr)
library(readr)

iris$ID <- rep(paste0("sample", 1:50), 3)
iris_mess <- gather(iris, measurement, value, -Species, -ID) %>%
  spread(Species, value) %>%
  unite(measurement, ID, measurement)

write.csv(iris_mess, file="iris.csv", row.names = FALSE)


