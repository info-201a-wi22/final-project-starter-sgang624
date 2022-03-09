source("source/cleanData.R")
library("plotly")
library("stringr")


createPlot <- function(data, crime) {
  plotOnedata <- data %>%
    mutate(VCR = (data[[crime]]/Population)) %>%
    na.omit()
  y_axis <- paste(str_sub(crime,1,nchar(crime)-1), 'Crimes Rate')
  if (crime == 'Violent.Crimes') {
    y_axis <- 'Violent Crimes Rate'
  } else if (crime == 'Robberies') {
    y_axis <- 'Robbery Crimes Rate'
  }
  plotOne <- ggplot(data = plotOnedata) + 
    geom_point(aes(x = index_nsa, y = VCR), alpha = .5, 
               shape = 0) +
    geom_smooth(aes(x = index_nsa, y = VCR), color = 'red') +
    labs(
      title = paste("Housing Price Index vs", y_axis),
      x = "Housing Price Index Value",
      y = y_axis
    ) + theme_minimal()
  graph <- ggplotly(plotOne)
  return (graph)
}

