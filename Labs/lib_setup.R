# ------------------------------
# Installation script for STAA-577 course
# ------------------------------
from_cran <- c("devtools",      # development tools for R
               "nycflights13",  # flights departing NYC in 2013 (data manipulation set)
               "magrittr",      # data manipulation via pipes
               "rsample",       # bootstrap and cross-validation
               "purrr",         # iteration
               "tibble",        # generate 'tibble' class data frames
               "ggplot2",       # plotting package beyond base plots
               "broom",         # summarizing models consistently
               "dplyr",         # data set manipulation
               "ISLR",          # many data sets: Intro to Stat Learning in R
               #"AmesHousing",   # Housing data set from Ames
           	   "tidyverse")     # general use 'tidy' data (my induce install error if a required host machine library is absent for one of the depeendencies of RPostgreSQL; non-essential)
# If on Linux-Ubuntu try: sudo apt-get install libpq-dev

# That install.packages command may additionally install over 100 more packages.
install.packages(from_cran, repos = "http://cran.rstudio.com", dependencies = TRUE)

# To verify the installation, try running:
library(nycflights13)
flights
