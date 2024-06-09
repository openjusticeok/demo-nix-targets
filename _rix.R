library(rix)

rix(
  r_ver = "latest",
  r_pkgs = c(
    "targets",
    "dplyr",
    "ggplot2",
    "readr",
    "here"
  ),
  system_pkgs = NULL,
  git_pkgs = NULL,
  project_path = ".",
  overwrite = TRUE,
  print = TRUE
)
