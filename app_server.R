library(dplyr)
library(shiny)
library(ggplot2)
library(plotly)
library(knitr)

source("source/cleanData.R")
source("source/plotOne.R")
source("source/plotTwo.R")
source("source/plotThree.R")
source("source/plotFour.R")
server <- function(input, output) {
  output$plotOne <- renderPlotly(
    return (createPlot(hpi_crime_clean, input$crimeGroup))
  )
  output$plotTwo <- renderPlotly(
    return (createStackedBar(hpi_crime_clean, input$hpiValuePlotTwo))
  )
  output$plotThree <- renderPlotly(
    return (createBoxPlot(hpi_crime_clean, input$HPI_group))
  )
  output$plotFour <- renderPlotly(
    return (createHistorgram(hpi_crime_clean, input$HPI_height))
  )
}
  