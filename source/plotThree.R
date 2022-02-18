source("source/cleanData.r")
library("plotly")

plotThreeData <- hpi_crime_clean %>%
  mutate(HPI_group = case_when(
    between(index_nsa, 20, 141) ~ "Low",
    between(index_nsa, 142, 261) ~ "Medium",
    between(index_nsa, 262, 386) ~ "High",
    FALSE ~ NA_character_
  )) %>%
  mutate(crime_percentage = (Violent.Crimes / Population) * 100) %>%
  select(HPI_group, crime_percentage)


plotThree <- ggplot(plotThreeData, aes(x= HPI_group, y = crime_percentage, fill = HPI_group)) +
  geom_boxplot(na.rm = TRUE)


