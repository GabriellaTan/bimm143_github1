add <- function(x, y=1) {
  x + y
}
add(x=4)
add(x=7, y=90)
add(4,9)

add(c(1, 3,5,7, 9), 10)
add(c(1, 3,5,7, 9), c(1, -1))  #can, it'll recycle the 1 and -1

add(c(1, 3,5,7, 9), y = "strink")

#Making RESCALE function
rescale <- function(x) {
  rng <- range(x)
  (x - rng[1]) / (rng[2] - rng[1])
}

#Testing on simple example:
rescale (1:10)
rescale (c(1, 4, 10, NA, 18, 20)) ##Will produce all NA's. can't see anything now :(

  ## i wanna omit NA's!
rescale.na <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

rescale.na (1:10)
rescale.na (c(1, 4, 10, NA, 18, 20))
