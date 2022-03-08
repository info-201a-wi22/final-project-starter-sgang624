source("source/cleanData.R")
library("plotly")

createPlot <- function(data, pointAlpha, pointShape, lineColor) {
  plotOnedata <- data %>%
    mutate(VCR = (Violent.Crimes/Population)) %>%
    na.omit()
  plotOne <- ggplot(data = plotOnedata) + 
    geom_point(aes(x = index_nsa, y = VCR), alpha = pointAlpha, 
               shape = pointShape) +
    geom_smooth(aes(x = index_nsa, y = VCR), color = lineColor) +
    labs(
      title = "Housing Price Index vs Violent Crime Rate",
      x = "Housing Price Index Value",
      y = "Violent Crime Rate"
    ) + theme_minimal()
  graph <- ggplotly(plotOne)
  return (graph)
}

