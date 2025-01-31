library(magrittr)

diamonds <- ggplot2::diamonds
diamonds2 <- diamonds %>%
    dplyr::mutate(price_per_carat = price /carat)

pryr::object_size(diamonds)
pryr::object_size(diamonds2)
pryr::object_size(diamonds, diamonds2)