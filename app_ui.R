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
  p("Our topic is on neighborhood safety. We want to raise awareness on the 
  inefficiency of safeness for neighborhoods with lower income and funding."),
  h3("\n"),
  HTML('<center><img src="imrs.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  p("Through analyzing the crime and safety data of various neighborhoods 
  in relation to the socioeconomic incomes of the families in those 
  neighborhoods, we hope to raise awareness to the discrepancies between 
  the amount of police and crime protection low income neighborhoods receive 
  in comparison to higher income neighborhoods."), 
  h3("\n"),
  HTML('<center><img src="hill.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  p("With the results gathered 
  from this project, we hope to provide useful insight for those representing 
  lower income neighborhoods and incentive to bring about change, through 
  implementing new legislation and bills to ensure that. Those in lower incomes 
  feel safe and are protected from crimes within their neighborhoods."),
  h3("\n"),
  HTML('<center><img src="people.jpeg" style="height:600px;"></center>'),
  h3("\n"),
  p("Additionally, we hope that this project will spark interest in others to also 
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
  p("4 Summary takeaways"),
  h2("Plot One"),
  p("Evidently from this graph, it is apparent that the number and frequency of crimes increases, 
    as house price index increases. For violent crimes, there is a peak in the data for the rate at which
    these crimes occur when the housing price index value is roughly 100 which is on the lower side of housing
    price indexes. For Homicides, the crime rate frequency also was very prevalent when the hpi was lower, with a peak occuring
    again at roughly 100, and there being much more points when the hpi was 200 and below. For Assault crimes, when the hpi was roughly 108 there was a peak in 
    the plot, as well as more prevelance in assault crimes when the hpi was 200 and below. For robberies, there was a peak in the data 
    when the hpi was about 105, and again, these crimes occured much more when the hpi was 200 and below. Finally, for rapes, there wasnt necessarily a 
    peak in the data, but there was much more prevalance when the hpi was 200 and below, with extremely frequent occurances when the hpi was roughly 100."),
  
  h2("Plot Two"),
  p("When comparing the lowest and highest hpi values represented in this widget, which are 110 and 400, the percentage of assaults was 48.42% and 51.92%,
    the percentage of homicides was 1.59% and 1.42%, the percentage of rapes was 4.48% and  4.84%, for robberies the percentages were 45.52% and 41.82%. These
    values were very surprising to me, because when looking at the data from a different viewpoint on the frequencies that they occur in lower hpi neighborhoods v.s. higher
    hpi neighborhoods, there seems to be a very apparent gap between the rates, but the percentage of crimes occuring in these neighborhoods stays relatively constant and similar regardless of 
    house values. This is something that we were not expecting to see in our data, as we thought the percentages of different types of crimes would be vastly different depending on the neigborhood 
    house values."),
  
  h2("Plot Three"),
  p("When comparing the crime percentages for high, medium, and low hpi groups, it was evident that the median crime percentage rate was highest in the low income neighborhoods. The median crime percentage for low income neighborhoods was roughly
    1.18%, 0.96% for medium, and 0.74% for high hpi, the change in percentages depending on hpi makes it very apparent that there are more crimes that occur in lower income hpi neighborhoods."),
    
  h2("Plot Four"),
  p("When looking at the frequency at violent crimes for lower hpi neighborhoods, which are hpi's under 150, the frequency of violent crimes was much higher before the 2000s, with the peak occuring in 1991. 
    For hpi's greater than 150, the frequency of violent crimes was relatively low, up until the mid 2000s, with the highest amount of violent crimes occuring in 2006.")
)

report_page <- tabPanel(
  "Report",
  titlePanel("Report"),
  p(strong("Title:"), " Safe n' Sound"),
  p(strong("Authors:"),  "Suraj Gangaram (_sgang624@uw.edu), Sumaya Mohamud (smoham2@uw.edu), 
    Victoria Mulugeta (vmulu1@uw.edu), Duy Nguyen (dnh7@uw.edu), 
    Mike Ramsay (mramsay2@uw.edu)"),
  p(strong("Affliation")," INFO-201: Technical Foundations of Informatics - 
     The Information School - University of Washington"),
  p(strong("Date")," Winter 2022"),
  h3("Keywords"),
  strong("Crime, Safety, Low-Income, Neighborhood, Economic-Differences."),
  h3("Abstract"),
  p("Our main question is regarding _neighborhood safety_ and how much of a 
  factor socioeconomic status has on the safety within a neighborhood. 
  This question is of importance because many communities do not have the 
  proper representation and police protection, they are adversely affected by 
  crime and city negligence as a result. To address the question, we will 
  analyze datasets of crime rates in both higher and lower income neighborhoods 
  in order to determine any associations between a neighborhood’s socioeconomic 
  status and level of crime (measured in rates)."),
  h3("Introduction"),
  p("The project we are hoping to construct with our topic of neighborhood 
    safety, is bringing attention to the lack of safety in lower-income 
    neighborhoods. Through analyzing different neighborhoods crime and safety 
    data in relation to the socioeconomic incomes of the families in those 
    neighborhoods we hope to raise attention to the discrepancies between the 
    amount of police and crime protection low income neighborhoods receive in 
    comparison to higher income neighborhoods. With the results gathered from 
    this project, we hope to provide useful insight for those representing lower 
    income neighborhoods and incentive to bring about change, through 
    implementing new legislation and bills to ensure that those with low 
    incomes feel safe and are protected from crimes within their neighborhoods. 
    Additionally, we hope that this project will spark interest in others to 
    also research the differences in crime and protection and continue to 
    provide more data to implement changes to address these inequities."),
  h3("Design Situation"),
  h4("Project Framing"),
  p("The goal of this project is to study the _connection_ between the 
    income level in different areas and the different types of crime rates in 
    those areas. By doing this, we are trying to bring attention to the safety
    and equity issues in low-income neighborhoods. A similar project found 
    that for poor income households, the rate of nonfatal violent victimization 
    doubled compared to high-income households. We hope this project and
    others like it can become useful data for activists, journalists, 
    politicians, or anyone trying to bring forth equity and safety to the 
    marginalized and minoritized communities in America."),
  h4("Human-Values:"),
  p("The two human-values in our topic are Equity and Safety. 
    Equity is the value of _fair treatment and justice among all people_. 
    In this value, it must be acknowledged not all people have access to 
    equal resources and opportunities, and we must work together to eliminate 
    inequalities and bring everyone to the same level of equality. This leads to
    Safety as a value. As humans, we all want to be safe. Having equity for 
    everyone leads to the safety of all people as motivations for committing 
    crimes gets eliminated."),
  h4("Direct Stakeholders:"),
  p("Some of the direct stakeholders are low-income community leaders, researchers, journalists, students, and activists. These individuals are those who will be directly advocating and reporting these inequalities present in the data. Whether they will bring good or harm to these low-income communities will depend on the stakeholders and the values they hold. Still, the ability to understand statistical analysis is required to effectively utilize this project."),
  h4("Indirect Stakeholders:"),
  p("Some of the indirect stakeholders are city council members, state representatives, and news readers/watchers. They are the people that arguments, bills, and legislatures constructed from this project are being presented to. They are people that hold power in making decisions that can make the world more equitable and safer for minoritized and marginalized groups."),
  h4("Benefits: "),
  p("The benefit of this project is highlight issues of safety and crimes affecting low-income areas. From this, bills, legislatures, and arguments can be constructed to bring forth a more equitable and safer place for everyone. By doing this project, hopefully it will inspire others to do similar projects."),
  h4("Harms:"),
  p("Potential harms from this project is the potential of redlining in low-income neighborhoods due to the publication of this project. By publicly displaying information about crime rates of neighborhoods, social stigma(s) could be formed around different neighborhoods, thus negatively affecting the lives of people living in those communities[^3]. This could lead to reduced sales for business as they see less people coming to them or redlining from banks for people in the neighborhood."),
  h3("Research Questions"),
  p("The research questions we plan to address with our project are motivated by basic safety needs for those living within the neighborhoods we are studying. We are already conscious of the variances in police protection in higher income communities in contrast to lower income communities. Shedding light to and imploring these questions are vital to bringing about change. Our research questions are important because they will challenge the current policing and crime protection of lower income communities and provide the necessary basis to explore the data of crime rates. With the data collected we plan to help find answers to the questions below:"),
  tags$ol(
    tags$li("How much of an issue is neighborhood safety in low income areas?"),
    tags$li("What type of crimes are likely to occur in low-income areas?"),
    tags$li("What is the difference between crime rates in low-income 
            and high-income areas?"),
    tags$li("hat crime is most prevalent in low-income and high-income 
            areas in recent years (1990-2015)?")
  ),
  p("We plan to address our first research questions by selecting the lower income communities and observing the amount of violent crimes that occur within them. Using the different types of crimes listed in the dataset, we can answer our second research question by determining which crimes are most likely to occur in low income areas. We can do this by comparing what proportion of the total violent crimes each one of them makes up in certain communities. We can answer our third research question by grouping the housing price index into different income levels and comparing the differences in crime rates between them. For our fourth question, we can answer it by grouping the dataset into high and low-income, and then further group them based on years. We can then compare the averages of different crime rates based on year and split the data into two graphs for high and low income areas to see the trend in crime rate."),
  h3("Dataset"),
  h4("Size and Complexity"),
  p("The",tags$a(href="https://www.kaggle.com/sandeep04201988/housing-price-index-using-crime-rate-data?select=merged_dataset.csv", "dataset"), "we will use compares housing price index with crime rates in various cities around the United States from 1975 to 2015. It has 3477 rows/observations and 9 columns/features. However, after cleaning it up, there are only 1714 rows/observations useful for us to use. We believe this is due to programming errors in previous mergers of the dataset before we got this data. However, this was likely an formatting error rather than significant data loss, therefore, we chose to keep using this dataset."),
  h4("Data Provenance"),
  p("The data represents communities from around the United States over the span of 40 years.

Some of the crimes or variables that were recorded in this dataset are homicides, rapes, assualts and robberies. The city, population, year and housing price index are also included.

The data was collected from another Kaggle dataset, created by the Marshall Project, that measures crime rates across the United States from 1975 to 2015 and the FHFA house prices index. The Marshall Project, created in 2014, is a nonprofit, online journalism organization with a focus on issues related to criminal justice in the United States. It has been funded by donations and grants from various individuals and foundations. The FHFA is a federal agency in the United States that regulates mortgages. The house prices index is a measure of the movement of single-family house prices.

This data is created from the merging of the Housing-Index dataset and Crime in Context dataset. While the merged dataset is questionable in its validation and security. The dataset that should be composed of this merged dataset is very credible and secure. We are considering merging the two sourced dataset ourselves to ensure the validity, security, and credibility of the data we are working with."),
  p(tags$a(href="https://www.fhfa.gov/DataTools/Downloads/Pages/House-Price-Index-Datasets.aspx", 
           "The Housing-Index dataset"), "is verified by the United States 
    Federal Housing Finance Agency or FHFA. The dataset is collected by 
    reviewing mortgage transactions on single family properties since 
    January 1975. Each transaction is either purchased or secured by mortgage 
    loan companies Freddie Mac or Fannie Mae. This dataset was last updated on 
    November 29, 2020. Considering this dataset was reviewed by a government 
    agency and two mortgage loan companies further secured it, we believe this 
    dataset is very trustworthy and credible."),
  p(tags$a(href="https://www.kaggle.com/marshallproject/crime-rates", "The Crime In Context dataset"), 
    "was created by Gabriel Dance, Tom Meagher, and Emily Hopkin of 
    the Marshall Project. They compiled this dataset from the four major crimes 
    data the FBI classifies as violent. This includes homicide, rape, robbery 
    and assault. This dataset includes 68 police jurisdictions with populations 
    over 250,000 or greater. Only 1975 - 2014 data came directly from the FBI. 
    This part of the data came from the FBI Uniform Crime Reporting program's 
    \"Offenses Known and Clearances by Arrest\" database. The 2015 data was 
    obtained from directly contacting the police agency. Only 61 police 
    jurisdictions data was collected for 2015. The analysis for the crime 
    rate calculated is based on a per 100,000 residents in a police 
    jurisdiction.The 2015 crime rate analysis is based on 2014 population 
    estimate. Considering most of this dataset came from the FBI and parts of 
    it also came directly from police institutions, we believe that the source 
    of the data is very secure and trustworthy. As for the analysis, 
    the depth in which the Marshall project reveals their methodology and also 
    directly naming the people working on the analysis make the analysis quite 
    credible and trustworthy."),
  p("We obtained the housing price index and crime rate dataset from Kaggle. 
    It was created by merging the two datasets from The Marshall Project and FHFA, 
    listed above. They were merged together by Kaggle contributor, SandeepRamesh, 
    with the goal of uncovering a correlation between crime rate and housing price index."),
  h3("Findings"),
  h3("Discussion"),
  h3("Conclusion"),
  p("We hope that our data shows that lower-income neighborhoods can raise 
    awareness of the discrepancies between the amount of police and crime 
    protection towards low-income neighborhoods to receive in comparison to 
    higher-income neighborhoods. We hope that all neighborhoods become equal 
    no matter their status and are safe and protected from crimes within their 
    neighborhoods. The data we've received is a very credible source leaving 
    crime rates continuously rising mainly targeting lower-income neighborhoods.
    Wanting To be safe in your neighborhood shouldn't be something that has 
    to be debated over. These are humans who want a better lifestyle without 
    being afraid to live in their own homes. "),
  h3("Citations"),
  p(tags$a(href = "https://bjs.ojp.gov/content/pub/pdf/hpnvv0812.pdf", 
         "Reports by U.S. Department of Justice on Households Poverty 
         & Non-fatal violent victimization")),
  p(tags$a(href = "https://blogs.lse.ac.uk/usappblog/2016/07/08/how-neighborhood-inequality-leads-to-higher-crime-rates/",
         "How neighborhood inequality leads to higher crime rates"),
  tags$a(href="https://www.pnas.org/content/112/16/4994#:~:text=The%20hypothesis%20of%20neighborhood%20stigma,in%20their%20interactions%20with%20strangers",
         "Effect of neighborhood stigma on economic transactions")),
  p(tags$a(href = "https://www.datacoalition.org/improving-crime-data-to-make-better-policy/",
         "Improving Crime Data to Make Better Policy"))
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
