library(tidyverse)

ggplot(data = diamonds) +
  geom_col(mapping = aes(x = cut, y=carat))