library(tidyverse)

ggplot(data = diamonds, mapping = aes(x = cut, y = price)) +
  geom_boxplot()