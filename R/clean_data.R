make_penguins <- function() {
  library(palmerpenguins)

  penguins_clean <- penguins %>%
    drop_na(sex)

  return(penguins_clean)
}
