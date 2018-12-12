# ------------------------------
# Installation script for STAA-577 course
# Ensure all the packages below install
# to completion before attempting to
# run the *.Rmd RStudio notebook files
# ------------------------------
from_cran <- c(
  "devtools",      # development tools for R
  "nycflights13",  # flights departing NYC in 2013 (data manipulation set)
  "magrittr",      # data manipulation via pipes
  "rsample",       # bootstrap and cross-validation
  "rmarkdown",     # dynamic document generation in R; R notebooks
  "purrr",         # iteration
  "tibble",        # generate 'tibble' class data frames
  "stringr",       # working with strings
  "ggplot2",       # plotting package beyond base plots
  "broom",         # summarizing models consistently
  "yardstick",     # calculating model performance metrics
  "dplyr",         # a grammar for data set manipulation
  "tidyr",         # reshaping data objects; long vs. wide
  "tidyverse",     # general use 'tidy' data
  "gridExtra",     # plotting ggplots into grids
  "ISLR",          # many data sets: Intro to Stat Learning in R
  "gbm",           # generalzed boosted models
  "gam",           # generalzed additive models
  "leaps",         # subset model selection
  "glmnet",        # generalzed linear models (logistic regression)
  "caret",         # Classificatio and Regresstion Training
  "e1071",         # SVM and naive Bayes
  "randomForest",  # fit random forest models
  "pROC",          # ROC curves
  "rpart.plot"     # visualizing CART rpart models
)

# That install.packages command may additionally install over 100 more packages.
install.packages(from_cran, repos = "http://cran.rstudio.com", dependencies = TRUE)

# To verify the installation, try running:
library(nycflights13)
flights
