library(tidyverse)
library(nycflights13)
library(lubridate)

flights %>%
  select(year, month, day, hour, minute) %>%
  mutate(
    departure = make_datetime(year, month, day, hour, minute)
  )