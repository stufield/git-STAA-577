#' Trim final variable in a data frame; there are many ways to skin this cat
#' -----------------------

options(tidyverse.quiet = TRUE)
library(tidyverse)
dim(mtcars)
names(mtcars)


#' If you know the variable name
#' -------------------
#' Use `dplyr::select()`
new <- mtcars %>% select(-carb)
dim(new)
names(new)

#' Or using `base R + which()`
new2 <- mtcars[, -which(names(mtcars) == "carb")]
dim(new2)
names(new2)


#' If you do NOT know the variable name
#' -------------------
#' Use `dplyr::select()` with helper `tidyselect::last_col()`
new3 <- mtcars %>% select(-tidyselect::last_col())
dim(new3)
names(new3)

#' Or using `base R + ncol()`
new4 <- mtcars[, -ncol(mtcars)]
dim(new4)
names(new4)
