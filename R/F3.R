#' Function three (F3 Function)
#'
#' Your input for this function should be an individual year. 
#' Your function should limit the data for that year to include
#' numeric continuous variables only (not categorical data). 
#' Your output should be the correlation matrix for all numeric
#' variables in the data for that year. 
#' @year Gimme a year.


F3 <- function(year) {
  library(dplyr)
  d <- nba %>% dplyr::filter(Year == year)
  nums <- unlist(lapply(d, is.numeric))
  out <- cor(d[ , nums])
  return(out)
}



