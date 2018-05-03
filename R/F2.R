#' Function two (F2 Function)
#'
#' Your input for this function should be an individual year. 
#' Your output should be the oldest player in the NBA data
#' for that year.
#' @year Gimme a year.


F2 <- function(year) {
  library(dplyr)
  out <- nba %>% dplyr::filter(Year == year) %>% arrange(desc(Age)) %>% head(1) %>% select(Player) %>% unlist() %>% as.character()
  return(out)
}


