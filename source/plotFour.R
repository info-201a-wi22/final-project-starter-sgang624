source("source/cleanData.R")
library(plotly)

plotFourData <- hpi_crime_clean %>%
  group_by(Year) %>%
  select(Year, Homicides, Rapes, Assaults, Robberies)

View(plotFourData)

p <- plotFourData %>%
  #filter( price<300 ) %>%
  ggplot( aes(x=Year)) +
  geom_histogram( binwidth=1, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  ggtitle("Violent Crimes by Year") 

ggplotly(p)




ggplot(data = plotFourData) + 
  geom_histogram(mapping = aes(x = Year, y = Violent.Crimes)) +
  labs(
    title = "Violent Crimes by Year",
    x = "Year",
    y = "Violent Crime "
  )




