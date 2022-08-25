make_model1 <- function(df) {
  model1 <- lm(body_mass_g ~ bill_length_mm,
               data = df)

  return(model1)
}

make_model2 <- function(df) {
  x <- lm(body_mass_g ~ bill_length_mm + species,
          data = df)

  return(x)
}

make_model <- function(df, formula) {
  x <- lm(formula, data = df)
  return(x)
}

#
# model1 <- make_model(clean_penguins, "body_mass_g ~ bill_length_mm")
# model2 <- make_model(clean_penguins, "body_mass_g ~ bill_length_mm + species")
# model3 <- make_model(clean_penguins, "body_mass_g ~ bill_length_mm + sex")
