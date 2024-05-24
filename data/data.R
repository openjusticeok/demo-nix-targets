library(readr)
library(dplyr)
library(here)

data(iris)

write_csv(iris, here("data/data.csv"))
