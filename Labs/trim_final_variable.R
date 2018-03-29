
library(ISLR)
dim(Smarket)
names(Smarket)

# Using dplyr in tidyverse
new <- dplyr::select(Smarket, -Direction)
dim(new)
names(new)

# Using base R; final column
new2 <- Smarket[, -ncol(Smarket)]
dim(new2)
names(new2)

# Using base R; using which()
new3 <- Smarket[, -which(names(Smarket)=="Direction")]
dim(new3)
names(new3)
