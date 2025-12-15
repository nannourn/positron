# coded by: Nan Nourn
# date: 2025-12-07
# purpose: to show common data science and coding principles in R with new Positron IDE

# load packages
library(tidyverse)
library(palmerpenguins)
library(here)
here()
theme_set(theme_minimal())

# load dataset
penguins <- palmerpenguins::penguins
penguins <- penguins |> drop_na()

# simple graphs
# compare mass between species
penguins |>
  ggplot(aes(x = body_mass_g, fill = species)) +
  geom_density(alpha = 0.7)
# compare flipper length between sex
penguins |>
  ggplot(aes(x = flipper_length_mm, fill = sex)) +
  geom_histogram(alpha = 0.5)
