source("source/cleanData.r")
library("plotly")

createBoxPlot <- function(data, HPI_group) {
  plotThreeData <- data %>%
    mutate(HPI_group = case_when(
      between(index_nsa, 20, 141) ~ "Low",
      between(index_nsa, 142, 261) ~ "Medium",
      between(index_nsa, 262, 386) ~ "High",
      FALSE ~ NA_character_
    )) %>%
    mutate(crime_percentage = (Violent.Crimes / Population) * 100) %>%
    select(HPI_group, crime_percentage)
  
  plotThree <- ggplot(data = plotThreeData) +
    geom_boxplot(aes(x= .data[[HPI_group]], y = crime_percentage, fill = HPI_group)) +
    labs(
      title = "Comparing Crime Percentages of Various HPI Groups",
      x = "HPI Group",
      y = "Crime Percentage"
    ) + theme_minimal()
  
  graph <- ggplotly(plotThree)
  return (graph)
}
