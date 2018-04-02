
reprex::reprex({
  suppressMessages(library(tibble))
  suppressMessages(library(magrittr))
  suppressMessages(library(rsample))
  iris %>%
    as.tibble %T>% {
    object.size(.) %>%
        format(units = "KB") %>%
        stringr::str_c("Original Size: ", .) %>%
        print()
    } %>%
    rsample::bootstraps(times = 1000) %>%
    object.size(.) %>%
    format(units = "KB") %>%
    stringr::str_c("Bootstrap Size: ", .)
})
