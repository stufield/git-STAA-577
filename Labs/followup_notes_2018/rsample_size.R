
reprex::reprex({
  suppressMessages(library(tibble))
  suppressMessages(library(magrittr))
  suppressMessages(library(rsample))
  # devtools::install_github("r-lib/lobstr")  # install dev version
  suppressMessages(library(lobstr))
  compare_size <- function(x) {
    c(base   = utils::object.size(x),
      lobstr = lobstr::obj_size(x))
  }
  iris %<>% as.tibble()
  x1 <- compare_size(iris)
  x2 <- rsample::bootstraps(iris, times = 1000) %>%
    compare_size()
  # Original Size:
  print(x1)
  # Resample Size:
  print(x2)
  # Ratio:
  print(x2/x1)
}, outfile = "rsample_size")
