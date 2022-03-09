library(dplyr)
library("tidyverse")
library(shiny)
library(ggplot2)
library(plotly)
library(knitr)

intro_page <- tabPanel(
  "Introduction",
  titlePanel("Introduction"),
  p("Intro paragraph")
)

interactive_page_one <- tabPanel(
    "Plot One",
    titlePanel('Violent Crime to HPI'),
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

interactive_page_two <- tabPanel(
  "Plot Two",
  titlePanel('Violent Crime Distrubtion for HPI Values'),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = 'hpiValuePlotTwo',
        label = 'HPI Value',
        choices = list("110" = 110,
                       "150" = 125,
                       "200" = 200,
                       "250" = 250,
                       "300" = 300,
                       "350" = 350,
                       "400" = 400)
      )
    ),
    mainPanel(
      plotlyOutput("plotTwo")
    )
  )
)

interactive_page_three <- tabPanel(
  "Plot Three",
  titlePanel('Comparing Crime Percentages of Various HPI Groups'),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "HPI_group",
        label = "Choose HPI Group to Display",
        choices = list("High" = "High", 
                       "Medium" = "Medium",
                       "Low" = "Low",
                       "All" = "All")
      ), 
    ),
    
    mainPanel(
      plotlyOutput("plotThree"),
    ) 
  )
)

summary_takeaways_page <- tabPanel(
  "Summary Takeaways",
  titlePanel("Summary Takeaways"),
  p("3 Summary paragraphs")
)

report_page <- tabPanel(
  "Final Report",
  p("report")
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
  intro_page,
  interactive_page_one, 
  interactive_page_two,
  interactive_page_three,
  summary_takeaways_page,
  report_page
)
