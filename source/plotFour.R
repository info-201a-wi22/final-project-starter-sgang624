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






