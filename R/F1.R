#' Function one (F1 Function)
#'
#' Your input for this function should be an individual year. 
#' Your output should be the player for that year who scored
#' the most points.
#' @year Gimme a year.


F1 <- function(year) {
  library(dplyr)
  d <- read.csv("./R/Seasons_Stats_NBA.csv")
  out <- d %>% dplyr::filter(Year == year) %>% arrange(desc(G)) %>% head(1) %>% select(Player) %>% unlist() %>% as.character()
  return(out)
}

