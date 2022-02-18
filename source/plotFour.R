source("source/cleanData.R")
library(plotly)

plotFourDataLow <- hpi_crime_clean %>%
  filter(index_nsa <= 150) %>%
  group_by(Year) %>%
  select(Year, Violent.Crimes)

plotFourDataHigh <- hpi_crime_clean %>%
  filter(index_nsa >= 150) %>%
  group_by(Year) %>%
  select(Year, Violent.Crimes)

plotLow <- ggplot(data = plotFourDataLow) + 
  geom_col(mapping = aes(x = Year, y = Violent.Crimes)) +
  labs(
    title = "Violent Crimes by Year (for HPI<150)",
    x = "Year",
    y = "Violent Crime "
  ) 

plotHigh <- ggplot(data = plotFourDataHigh) + 
  geom_col(mapping = aes(x = Year, y = Violent.Crimes)) +
  labs(
    title = "Violent Crimes by Year (for HPI>150)",
    x = "Year",
    y = "Violent Crime "
  ) 

ggplotly(plotLow)

ggplotly(plotHigh)




#No Work
p <- plotFourData %>%
  #filter( price<300 ) %>%
  ggplot(aes(x=Year)) +
  geom_histogram( binwidth=1, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  ggtitle("Violent Crimes by Year") 

ggplotly(p)

