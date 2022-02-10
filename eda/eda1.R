library(tidyverse)

smaller <- diamonds %>%
  filter(carat < 3)

ggplot(data = smaller, mapping = aes(x = carat, color = cut)) +
  geom_freqpoly(bandwidth = 0.1)