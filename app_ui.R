library(dplyr)
library("tidyverse")
library(shiny)
library(ggplot2)
library(plotly)
library(knitr)

intro_page <- tabPanel(
  "Introduction",
  titlePanel("Introduction"),
  HTML('<center><img src="watch.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  h3("Our topic is on neighborhood safety. We want to raise awareness on the 
  inefficiency of safeness for neighborhoods with lower income and funding"),
  h3("\n"),
  HTML('<center><img src="imrs.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  h3("Through analyzing the crime and safety data of various neighborhoods 
  in relation to the socioeconomic incomes of the families in those 
  neighborhoods, we hope to raise awareness to the discrepancies between 
  the amount of police and crime protection low income neighborhoods receive 
  in comparison to higher income neighborhoods."), 
  h3("\n"),
  HTML('<center><img src="hill.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  h3("With the results gathered 
  from this project, we hope to provide useful insight for those representing 
  lower income neighborhoods and incentive to bring about change, through 
  implementing new legislation and bills to ensure that. Those in lower incomes 
  feel safe and are protected from crimes within their neighborhoods."),
  h3("\n"),
  HTML('<center><img src="people.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  h3("Additionally, we hope that this project will spark interest in others to also 
  research the differences in crime and safety protection and continue to 
  provide more data to implement changes to address these inequities.")
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
        plotlyOutput("plotOne"),
        h2("Description"),
        p("This scatter plot that shows the relationship between Housing Price 
          Index (HPI) Values and various violent crimes associated with this values. The widget allows 
          for the ability to select individaul crime types. This plot was made to answer the research 
          question of how safe are the neighborhoods in low-income areas. It is clear from this plot, 
          neighborhoods with HPI values higher than 200 experience way less crime compared to 
          neighborhoods under that value. Robberies and rapes appear to be more associated with the 
          lower HPI values.")
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
      plotlyOutput("plotTwo"),
      h2("Description"),
      p("This plot examines assaults, homicides, rapes, and robberies as a 
        percentage out of the total number of violent crimes for areas under 
        a variety of HPI values. The stacked bar chart allows for a clear display 
        of the breakdown amoung the four listed crimes. The widget also allows for 
        a deeper look at a few select HPI values. It appears that as HPI increases, 
        assaults make up a larger proportion of violent crimes and robberies make up less.
        Homicides and rapes don't appear to be that impacted.")
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
      h2("Description"),
      p("This chart attempts to answer the question regarding the difference 
      between crime rates in low income and high income areas. The box plots 
      clearly delineate the spread of the data (percentage of crime) across each 
      of the 3 categories: high, low, and medium. The ability to select which one 
      to display with the widget adds for further focus.")
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
      h2("Description"),
      p("This plot looks at total violent crime numbers in the US, but it is 
        split up displaying high and low income groups, by Housing Price Index 
        (HPI), in separate graphs that can be controlled with the widget. We 
        wanted this plot to display the differences in crime numbers across low 
        income and high income areas, which it does a good job at. The plots 
        show that there are more violent crimes for the lower HPI value and less
        for the chart with the chart displaying the higher value.")
    ) 
  )
)


summary_takeaways_page <- tabPanel(
  "Summary Takeaways",
  titlePanel("Summary Takeaways"),
  p("4 Summary takeaways")
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
