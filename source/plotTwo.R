source("source/cleanData.r")
library("plotly")
crime_type <- c('Homicides', 'Rapes', 'Assaults', 'Robberies')

plotTwoData <- hpi_crime_clean %>% 
  filter(index_nsa <= 180) %>% 
  summarise(
    group = c("Homicides", "Rapes", "Assaults", "Robberies"),
    values = c((sum(Homicides, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
               (sum(Rapes, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
               (sum(Assaults, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
               (sum(Robberies, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100)
  )

f <- ggplot(plotTwoData, aes(x="Violet Crimes For HPI under 110", y = values, fill=group)) +
  geom_bar(stat="identity", width=1)
ggplotly(f)

