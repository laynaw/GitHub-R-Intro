# Function to install & load packages safely
packageLoad <- function(pkgs) {
  for (pkg in pkgs) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      install.packages(pkg, repos = "https://cloud.r-project.org/")  # specify CRAN mirror
    }
    library(pkg, character.only = TRUE)
  }
}

# List of packages (add any extra ones you need)
packages <- c("tidyverse", "palmerpenguins", "rmarkdown", "ggthemes",
  "RColorBrewer", "viridis", "ggdark", "plotly",
  "ggimage", "shadowtext", "lterdatasampler", "rstatix","lubridate", "dataRetrieval", "httr", "jsonlite")

# Load/install
packageLoad(packages)