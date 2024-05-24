library(readr)
library(here)

data <- data(iris)

write_csv(data, here("data/data.csv"))
