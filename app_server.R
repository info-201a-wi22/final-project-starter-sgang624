library(dplyr)
library(shiny)
library(ggplot2)
library(plotly)
library(knitr)

source("source/cleanData.R")
source("source/plotOne.R")
server <- function(input, output) {
  output$plotOne <- renderPlotly(
    return (createPlot(hpi_crime_clean, input$pointAlpha, 
                               input$pointShape, input$lineColor))
  )
}
  