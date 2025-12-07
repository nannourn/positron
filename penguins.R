# coded by: Nan Nourn
# date: 2025-12-07

# packages
library(tidyverse)
library(palmerpenguins)
library(here)
here()
theme_set(theme_minimal())

# load dataset
penguins <- palmerpenguins::penguins
penguins <- penguins |> drop_na()

# simple graphs
penguins |> 
  ggplot(aes(x = body_mass_g, fill = species)) +
  geom_density(alpha = 0.7)
