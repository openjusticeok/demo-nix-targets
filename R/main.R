library(here)
library(readr)

get_data <- function(file) {
  read_csv(file)
}

plot_data <- function(data) {
  data |>
  	group_by(Species) |>
  	ggplot(aes(x = `Sepal.Width`, y = `Sepal.Length`, color = Species))	+
  	  geom_point()
}

export_plot <- function(plot) {
  ggplot2::ggsave("plots/plot.png", plot, create.dir = TRUE)
}
