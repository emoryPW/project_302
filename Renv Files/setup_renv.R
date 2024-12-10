# Check if renv is installed;
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

library(renv)
# Initialize renv for the current project
renv::init()

# Specify the required packages for your analysis
# Replace these packages with the ones your project actually needs
required_packages <- c(
  "tidyverse",
  "map",
"ggplot2",
"readr",
"viridis",
"dplyr"
)

# Install any missing packages
for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

# Snapshot the environment to lock in the package versions
renv::snapshot()

