library(nycflights13)
library(tidyverse)

filter(flights,
       month >= 7 & month <=9
         & (dest == 'IAH' | dest == 'HOU')
         & arr_delay > 120)