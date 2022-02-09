library(tidyverse)
library(nycflights13)

delays <- flights %>%
  group_by(dest) %>%
  summarise(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>%
  filter(count > 20, dest != "HML")


ggplot(data = delays, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size=count), alpha = 1/3) +
  geom_smooth(se = FALSE)