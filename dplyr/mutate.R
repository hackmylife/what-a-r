library(nycflights13)
library(tidyverse)

flights_sml <- select(flights,
                      year:day,
                      dep_delay,
                      arr_delay,
                      distance,
                      air_time)

mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60)