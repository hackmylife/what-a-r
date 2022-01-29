library("ggplot2")

roll <- function(bones = 1:6, size=1) {
  dice <- sample(bones, size, replace = TRUE)
  sum(dice)
}

rolls <- replicate(10000, roll(size=2))
qplot(rolls, binwidth = 1)