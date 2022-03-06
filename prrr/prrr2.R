library(tidyverse)

means <- c(0, 1, 2)

out <- vector("list", length(means))
for(i in seq_along(means)) {
  n <- sample(100, 1)
  out[[i]] <- rnorm(n, means[[i]])
}
str(out)
str(flatten_dbl(out))

