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
        plotlyOutput("plotOne"),
        h2("Purpose"),
        p("This is plot is a scatter plot that shows the relationship between HPI Values and The Violent Crime Rate associated with this values."),
        h2("Insights"),
        p("This plot was made to answer the research question of", tags$b("how safe are the neighborhoods 
          in low-income area"),". It is clear from this plot, neighborhoods with HPI values higher 
          than", em("200"), " experience way less crime compared to neighborhoods under", em("200"),". From 
          HPI values between", em("200"), " to", em("100"),", there is a sharp increase in crime rate. From HPI values between ", em("100"), " to ", em("50"),", 
          there is a sharp decrease in crime rate. From HPI values from ", em("50"), " to ", em("0"),", there is slight decrease in crime rate. 
          From this plot, we conclude that less crime happens in high-income areas i.e., neighborhoods with", tags$b("HPI values higher than 200"), " 
          and more crime happens in low-income area i.e., neighborhoods with", tags$b("HPI values less than 200"),". This mean low-income areas are much 
          dangerous than high income areas. However, this is not true for Assualt Crimes. Compares to ", tags$b("HPI over 200"), ", Assualt Crimes Rate for",
          tags$b("HPI under 50"), " are much lower compared to their high HPI counterpart.")
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
      h2("Purpose"),
      p("This plot displays assaults, homicides, rapes, and robberies as a 
        percentage out of the total number of violent crimes for areas under 
        a variety of HPI values. We thought that displaying it in 
        the form of a stacked bar chart with a key was best for displaying 
        multiple variables that make up a whole."),
      h2("Insights"),
      p("Looking at this plot, we can see that assaults and robberies make up 
        the vast majority of total violent crimes for lower HPI values. 
        Meanwhile, rapes and homicides make up significantly less of the total 
        violent crimes. We were a little shocked by how small a proportion that 
        homicides make out of the total proportion. So this visualization makes 
        it pretty clear what types of violent crimes occur the most often in 
        low-income areas. For areas HPI values over 200, assaults were the most 
        crime to occur. However, areas with HPI values under 200, robberies were 
        more prevalent.")
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
      h2("Purpose"),
      p("The purpose of this plot is to answer the question regarding the difference 
      between crime rates in low income and high income areas. The box plots are included 
      because they delineates the spread of the data (percentage of crime) across each 
        of the 3 categories: high, low, and medium"),
      h2("Insights"),
      p("There are no outlier in the high category, and it has an IQR of 0.74. 
      There are several outliers in the low category, and it has an IQR of 0.94,
      indicating it has a relatively high spread from the mean as opposed to other
      categories. There are some outliers in the medium category,and it has an IQR 
      of 0.63. Overall, the box plots show that low income areas have the highest 
      percentage of crime, and the data extend beyond the whiskers of the plot (meaning 
      that there are outliers). It's a fair assumption to make that low income 
        areas have a higher percentage of crime as opposed to higher income areas.")
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
