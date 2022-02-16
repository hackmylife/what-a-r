library(tidyverse)

df <- tibble(
  x = runif(5),
  y = rnorm(5)
)

df[["x"]]