source("source/cleanData.r")
library("plotly")

createStackedBar <- function(data, indexValue) {
  plotTwoData <- data %>% 
    filter(index_nsa <= indexValue) %>% 
    summarise(
      group = c("Homicides", "Rapes", "Assaults", "Robberies"),
      percentage = round(c((sum(Homicides, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
                     (sum(Rapes, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
                     (sum(Assaults, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100, 
                     (sum(Robberies, na.rm = TRUE) / sum(Violent.Crimes, na.rm = TRUE)) * 100), 2)
    )
  plotTwo <- ggplot(plotTwoData, aes(x="", y = percentage, fill=group)) +
    geom_bar(stat="identity", width=1) +
    xlab(paste("Violet Crimes For HPI under", indexValue)) +
    ylab("Percentage of Major Crime") + theme_linedraw()
  
  return(ggplotly(plotTwo))
  
}

