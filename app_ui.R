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
          inputId = 'crimeGroup',
          label = 'Crime',
          choices = list("Violent Crimes" = 'Violent.Crimes',
                         "Homicides" = "Homicides",
                         "Assaults" = "Assaults",
                         "Robberies" = 'Robberies',
                         "Rapes" = "Rapes")
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

interactive_page_four <- tabPanel(
  "Plot Four",
  titlePanel('Violent Crimes by Year for HPI Values'),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "HPI_height",
        label = "HPI Values",
        choices = list("Above 150" = "high", 
                       "Under 150" = "low")
      ), 
    ),
    
    mainPanel(
      plotlyOutput("plotFour"),
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
  interactive_page_four,
  summary_takeaways_page,
  report_page
)
