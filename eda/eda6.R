library(tidyverse)
library(hexbin)

ggplot(data = smaller) +
  geom_hex(mapping = aes(x = carat, y = price))