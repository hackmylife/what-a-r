library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = year)) +
  facet_wrap(~ class, nrow = 2)