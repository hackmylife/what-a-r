library(tidyverse)

diamonds %>%
  count(color, cut) %>%
  ggplot(mapping = aes(x=color, y=cut)) +
    geom_tile(mapping = aes(fill = n))