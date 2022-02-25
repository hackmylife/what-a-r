library(tidyverse)
library(forcats)

by_age <- gss_cat %>%
  filter(!is.na(age)) %>%
  group_by(age, marital) %>%
  count() %>%
  mutate(prop = n / sum(n))

by_age

ggplot(by_age, aes(age, prop, color= marital)) +
  geom_line(na.rm = T)

ggplot(
  by_age,
  aes(age, prop, color = fct_reorder2(marital, age, prop))
) +
  geom_line() +
  labs(color = "marital")