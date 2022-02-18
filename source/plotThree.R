source("source/cleanData.r")
library("plotly")

plotThreeData <- hpi_crime_clean %>%
  mutate(HPI_group = case_when(
    between(index_nsa, 20, 141) ~ "Low",
    between(index_nsa, 142, 261) ~ "Medium",
    between(index_nsa, 262, 386) ~ "High",
    TRUE ~ NA_character_
  )) %>%
  select(HPI_group, Violent.Crimes)

View(plotThreeData)


ggplot(plotThreeData, aes(x= , y = )) +
  geom_bar(stat="", width=) +
  labs(
    title = "",
    x = "",
    y = ""
  )
ggplotly()
