library(tidyverse)

table5 %>%
  unite(new, century, year, sep= "")