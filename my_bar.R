#function for quick and nice plots

my_bar <- function(df, x, y){
  library(ggplot2)
  
  if (!(x %in% names(df) && y %in% names(df))){
    stop('Specified variables not found in the data frame.')
  }
  
  dat.df <- data.frame(df)
  
  plot <- ggplot(dat.df, aes(x = x, y = y)) +
    geom_bar(stat ='identity') +
    theme_bw()
  
  return(plot)
}


