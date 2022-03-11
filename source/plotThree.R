source("source/cleanData.R")
library("plotly")


createBoxPlot <- function(data, selectedHPIGroup) {
  plotThreeData <- data %>%
    mutate(HPI_group = case_when(
      between(index_nsa, 20, 141) ~ "Low",
      between(index_nsa, 141, 262) ~ "Medium",
      between(index_nsa, 262, 387) ~ "High",
      FALSE ~ NA_character_
    )) %>%
    mutate(crime_percentage = (Violent.Crimes / Population) * 100) %>%
    select(HPI_group, crime_percentage)
  if(str_detect(selectedHPIGroup, "High")) {
    plotThreeData <- plotThreeData %>%
      filter(HPI_group == 'High')
  } else if(str_detect(selectedHPIGroup, "Medium")) {
    plotThreeData <- plotThreeData %>%
      filter(HPI_group == 'Medium')
  } else if(str_detect(selectedHPIGroup, "Low")) {
    plotThreeData <- plotThreeData %>%
      filter(HPI_group == 'Low')
  }
  HPI <- selectedHPIGroup
  if(str_detect(selectedHPIGroup, "All")) {
    HPI <- plotThreeData$HPI_group
  }
  plotThree <- ggplot(data = plotThreeData) +
    geom_boxplot(aes(x= .data$HPI_group, y = crime_percentage, fill = HPI)) +
    labs(
      title = "Comparing Crime Percentages of Various HPI Groups",
      x = "HPI Group",
      y = "Crime Percentage"
    ) + theme_minimal()
  
  graph <- ggplotly(plotThree)
  return (graph)
}

