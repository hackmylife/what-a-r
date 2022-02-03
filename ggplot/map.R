library(maps)

nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "blue", color = "black") +
  coord_quickmap()