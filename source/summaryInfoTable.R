source("source/cleanData.R")

table <- hpi_crime_clean %>% 
  group_by(City..State) %>% 
  summarise(
    "total violent crimes" = sum(Violent.Crimes),
    "total homicides crimes" = sum(Homicides),
    "total rapes crimes" = sum(Rapes),
    "total assualts crimes" = sum(Assaults),
    "total robberies crimes" = sum(Robberies)
  )
print(table)
