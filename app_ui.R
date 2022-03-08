library(dplyr)
library("tidyverse")
library(shiny)
library(ggplot2)
library(plotly)
library(knitr)

interactive_page_one <- tabPanel(
    "Violent Crime to HPI",
    sidebarLayout(
      sidebarPanel(
        selectInput(
          inputId = 'pointAlpha',
          label = 'Point Alpha',
          choices = list(".5" = .5,
                         ".3" = .3,
                         ".1" = .1)
        ),
        selectInput(
          inputId = 'pointShape',
          label = 'Point Shape',
          choices = list("Square" = 0,
                         "Circle" = 1,
                         "Diamond" = 5,
                         "Triangle" = 2)
        ),
        selectInput(
          inputId = 'lineColor',
          label = 'Line Color',
          choices = list("Red" = 'red',
                         "Blue" = 'blue',
                         "Purple" = 'Purple',
                         "Green" = 'green')
        )
      ),
      mainPanel(
        plotlyOutput("plotOne")
      )
    )
  )

# ui <- navbarPage(
#   "Safe n' Sound",
#   intro_page,
#   interactive_page_one,
#   interactive_page_two,
#   interactive_page_three,
#   summary_takeaways_page, 
#   report_page
# )

ui <- navbarPage(
  "Safe n' Sound",
  interactive_page_one
)
