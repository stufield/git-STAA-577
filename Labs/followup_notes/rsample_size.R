
reprex::reprex({
  suppressMessages(library(tibble))
  suppressMessages(library(magrittr))
  suppressMessages(library(pryr))
  suppressMessages(library(rsample))
  iris %<>% as.tibble
  x1 <- pryr::compare_size(iris)
  x2 <- rsample::bootstraps(iris, times = 1000) %>%
    pryr::compare_size(.)
  # Original Size:
  print(x1)
  # Resample Size:
  print(x2)
  # Ratio:
  print(x2/x1)
}, outfile = "blah")
