library(dplyr)
library(shiny)
library(ggplot2)
library(plotly)
library(knitr)

ui <- navbarPage(
  "Safe n' Sound",
  intro_page,
  interactive_page_one,
  interactive_page_two,
  interactive_page_three,
  summary_takeaways_page, 
  report_page
)
