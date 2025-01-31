library(tidyverse)
library(nycflights13)
library(lubridate)

make_detetime_100 <- function(year, month, day, time) {
  make_datetime(year, month, day, time %% 100, time %% 100)
}

frights_dt <- flights %>%
  filter(!is.na(dep_time), !is.na(arr_time)) %>%
  mutate(
    dep_time = make_detetime_100(year, month, day, dep_time),
    arr_time = make_detetime_100(year, month, day, arr_time),
    sched_dep_time = make_detetime_100(
      year, month, day, sched_dep_time
    ),
    shed_arr_time = make_detetime_100(
      year, month, day, sched_arr_time
    )
  ) %>%
  select(origin, dest, ends_with("delay"), ends_with("time"))

frights_dt %>%
  count(week = floor_date(dep_time, "week")) %>%
  ggplot(aes(week, n)) +
    geom_line()