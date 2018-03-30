# ------------------------------
# Installation script for 577 course
# ------------------------------
from_cran <- c("AmesHousing",   # Housing data set from Ames
               "nycflights13",  # flights departing NYC in 2013 (data manipulation set)
               "magrittr",      # data manipulation via pipes
               "rsample",       # bootstrap and cross-validation
               "devtools",      # development tools for R
               "tibble",        # generate 'tibble' class data frames
               "dplyr",         # data set manipulation
           	   "tidyverse")     # general use 'tidy' data (my induce install error if a required host machine library is absent for one of the depeendencies of RPostgreSQL; non-essential)
# If on Linux-Ubuntu try: sudo apt-get install libpq-dev

# That install.packages command may additionally install over 100 more packages.
install.packages(from_cran, repos = "http://cran.rstudio.com", dependencies = TRUE)

#To verify the installation, try running:
library(AmesHousing)
ames <- make_ames()
ames
library(nycflights13)
flights

