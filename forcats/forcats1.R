library(tidyverse)
library(forcats)

relig <- gss_cat %>%
  group_by(relig) %>%
  summarize(
    age = mean(age, na.rm = T),
    tvhours = mean(tvhours, na.rm = T),
    n = n()
  )

ggplot(relig, aes(tvhours, fct_reorder(relig, tvhours))) + geom_point()
