library(tidyverse)

ggplot(data = diamonds) +
  geom_bar(alpha = 3/5, mapping = aes(x = cut, fill = clarity))