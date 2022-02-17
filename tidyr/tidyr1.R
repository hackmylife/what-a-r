library(tidyverse)

table4a %>%
  gather(`1999`, `2000`, key = "year", value="cases")