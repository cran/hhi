#' Calculates the Herfindahl-Hirschman Index
#'
#' Computes the Herfindahl-Hirschman Index of a market/space, which is a measure of concentration, based on the share size of all individual firms/actors
#'@usage hhi(x, "s")
#'@param x Name of the data frame
#'@param s Name of the vector (variable) from the data frame, x, corresponding with stored market share values
#'@details Allows for placing the objects directly from working datasets (including, data frame and the market share variable name in quotes) into the function for intuitive usage.
#'@return hhi A measure of market concentration
#'@note The vector of "share" values should be comprised of integers corresponding to total share of individual firms/actors (e.g., df$s <- c(35, 40, 5, 10, 6, 4) # 6 firms totaling 100 percent of the market). The measure is often used as a measure of competition, where 0 is perfect competitiveness and 10,000 is a perfect monopoly.
#'@references Hirschman, Albert O. 1945. "National power and structure of foreign trade." Berkeley, CA: University of California Press.
#'@references Herfindahl, Orris Clemens. 1950. "Concentration in the steel industry." Ph.D. dissertation, Columbia University.
#'@references Rhoades, Stephen A. 1993. "The herfindahl-hirschman index." Federal Reserve Bulletin 79: 188.
#'@examples
#' a <- c(1,2,3) # arbitrary firm id
#' b <- c(2,3,4) # market share of each firm
#' x <- data.frame(a,b) # create data frame
#' hhi(x, "b") # calculate market concentration based on firms' share sizes
#'@export
hhi <- function(x, s){
  d <- x[ ,s]
  for(i in 1:length(d)) {
    d[i] <- d[i]^2
    hhi <- sum(d)
  }
  return(hhi)
}