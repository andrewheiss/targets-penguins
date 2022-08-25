library(targets)
library(tarchetypes)

# Set target options:
tar_option_set(
  packages = c("tibble"), # packages that every target function will have access to
  format = "rds" # default storage format
)

# Load functions
source("R/clean_data.R")
source("R/run_models.R")

# Main pipeline
list(
  # Create cleaned data
  tar_target(clean_penguins, make_penguins()),

  # Run some models
  tar_target(penguin_model_1, make_model1(clean_penguins)),
  tar_target(penguin_model_2, make_model2(clean_penguins)),

  # Knit the document
  tar_render(final_report, "report.rmd")
)
