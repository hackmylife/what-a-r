library(tidyverse)
library(nycflights13)

flights %>%
  count(year, month, day, flight) %>%
  filter(n > 1)