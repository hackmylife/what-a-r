library(tidyverse)
library(purrr)

dfs <- list(
  age = tibble(name = "John", age=30),
  sec = tibble(name = c("John", "Mary"), sex = c("M", "F")),
  trt = tibble(name = "Mary", treatment = "A")
)

dfs %>% reduce(full_join)