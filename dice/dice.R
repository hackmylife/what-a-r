library("ggplot2")

roll <- function(bones = 1:6, size=1) {
  dice <- sample(bones, size, replace = TRUE, prob=c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

rolls <- replicate(10000, roll(size=2))
qplot(rolls, binwidth = 1)