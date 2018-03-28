# Test of magrittr pipe with "." notation
# in combination with "." notation of stats lm ~ formulas
fit <- data.frame(y = rnorm(10), x1 = rnorm(10), x2 = rnorm(10)) %>%
  lm(y ~ ., data = .)

summary(fit)