#' Simple rsample Basics
#'
#' 1) create a simple bootstrap
#' 2) create LOO cross-validation
#' 3) create a simple 10-fold cross-validation
#'
#' Load necessary libraries:
library(tibble)
library(purrr)
library(rsample)
iris <- as.tibble(iris)

#' Look at the basic functionality
library(help=rsample)


#' Bootstrap sampling (out-of-bag; OOB):
set.seed(101)
boot5 <- rsample::bootstraps(iris, times = 5)
#' Summary:
boot5
class(boot5)

#' Proportion virginica:
mean(iris$Species == "virginica")   # 1/3

#' Proportion virginica by bootstrap iteration:
map_dbl(boot5$splits,
        function(x) {
          dat <- as.data.frame(x)$Species
          mean(dat == "virginica")
})


#' Leave-one-out cross-validation (LOO);
#' Special case of k-fold cross-validation:
set.seed(101)
loo <- rsample::loo_cv(iris)
loo
class(loo)

#' Find the missing (left-out) sample by iteration:
map_dbl(loo$splits,
        function(x) {
          setdiff(1:nrow(x$data), x$in_id)
})


#' Cross-Validation;
#' k-fold cross-validation (aka v-fold):
set.seed(101)
cv10 <- rsample::vfold_cv(iris, v = 10)   # 10-fold cross-validation

dim(iris)   # 150 samples

#' should be 135 vs 15 samples in each of 10 folds:
map_df(cv10$splits,
        function(x) {
          n_in  <- x$in_id
          n_out <- setdiff(1:nrow(x$data), n_in)
          data.frame(fold_id = x$id,
                     num_in = length(n_in),
                     num_out = length(n_out))
})
