roll <- function(bones = 1:6, size=1) {
  dice <- sample(bones, size, replace = TRUE)
  sum(dice)
}

roll(1:20, 2)