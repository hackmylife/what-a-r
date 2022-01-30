library(tidyverse)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(
    data = filter(mpg, class == "subcompact"),
    se = FALSE
  ) +
  geom_point(mapping = aes(color = class))
