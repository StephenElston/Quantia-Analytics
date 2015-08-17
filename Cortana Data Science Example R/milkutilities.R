log.cols <- function(x){
  ## A simple function to compute the log of a vector.
  log2(x)
}

to.POSIXct <- function(year, monthNumber){
  ## Function to create a POSIXct time series 
  ## object from a year.month format
  
  ## Create a charcter vector from the numeric input
  dateStr <- paste(as.character(year), "-",
                   as.character(monthNumber), "-",
                   "01", sep = "")
  
  as.POSIXct( strptime(dateStr, "%Y-%m-%d"))
}

order.month <- function(x){
  ## Function to make Month column an ordered factor.
  x <- substr(x, 1, 3)
  factor(x, 
         levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
                    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
         ordered = TRUE)
}
