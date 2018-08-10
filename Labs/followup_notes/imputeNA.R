
#' Impute NAs
#'
#' Imputes any NAs, usually in meta data, with the median value.
#' Must be a numeric. Factors or Character vectors are not
#' interrogated.
#'
#' @param x A a data frame, matrix, or a numeric vector.
#' @return An object of the same dimension and class as \code{x}
#' with any \code{NA} values replaced with the median of the corresponding
#' vector.
#' @examples
#'
#' data <- data.frame(a = rnorm(10),
#'                    b = rnorm(10),
#'                    c = rnorm(10),
#'                    d = head(letters, 10)
#'                  )
#' data[6, 2] <- NA
#' data[2, 1] <- NA
#' data
#' impute(data)
#' impute(data$a)
#' median(data$a, na.rm = TRUE)
#' median(data$b, na.rm = TRUE)
#' all.equal(impute(data)$a, impute(data$a))
#' all.equal(impute(data)$b, impute(data$b))
#' all.equal(data$c, impute(data$c))   # don't do anything; no NAs
#' impute(data$d)                      # error on character
#'
#' @seealso \code{\link{is.na}}, \code{\link[stats]{median}}, \code{\link[purrr]{map_if}}, \code{\link[purrr]{map_reduce}}
#' @author Stu Field

#' S3 method dispatch
#' @export
impute <- function(x) UseMethod("impute")


#' S3 impute default method
#' @export
impute.default <- function(x)
  stop("Couldn't find method for class: ", class(x), call. = FALSE)


#' S3 impute method for class character
#' @export
impute.character <- function(x)
  stop("Don't impute values for character class!", call. = FALSE)


#' S3 impute method for class matrix
#' @export
impute.data.frame <- function(x) {
  # fn to get only cols with NAs & numerics
  nas <- function(x) is.numeric(x) & any(is.na(x))
  purrr::map_if(x, nas, impute.numeric) %>% data.frame()
}


#' S3 impute method for class matrix
#' @export
impute.matrix <- function(x) {
  x %>% as.data.frame() %>%
    impute() %>%
    as.matrix()
}


#' S3 impute method for class numeric
#' @export
impute.numeric <- function(x) {
  med_x <- median(x, na.rm = TRUE)
  purrr::map_if(x, is.na, ~return(med_x)) %>%
    purrr::reduce(c)
}

