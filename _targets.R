library(targets)

source("R/main.R")

tar_option_set(
  package = c(
  	"dplyr",
  	"ggplot2",
  	"readr"
  )
)

list(
  tar_target(file, "data/data.csv", format = "file"),
  tar_target(data, get_data(file)),
  tar_target(plot, plot_data(data)),
  tar_target(export, export_plot(plot))
)
