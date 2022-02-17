source("source/cleanData.r")
library(plotly)
crime_type <- c('Homicides', 'Rapes', 'Assaults', 'Robberies')

plotTwoData <- hpi_crime_clean %>% 
  filter(index_nsa <= 125) %>% 
  summarise(
    group = c("Homicides", "Rapes", "Assaults", "Robberies"),
    percentage = c((sum(Homicides, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
               (sum(Rapes, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
               (sum(Assaults, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
               (sum(Robberies, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100)
  )

plotTwo <- ggplot(plotTwoData, aes(x="Violet Crimes For HPI under 110", y = round(percentage, 2), fill=group)) +
  geom_bar(stat="identity", width=1) +
  ylab("Percentage of Major Crime")

