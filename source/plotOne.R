source("source/cleanData.R")
library("plotly")
plotOnedata <- hpi_crime_clean %>%
  mutate(VCR = (Violent.Crimes/Population)) 

plotOne <- ggplot(data = plotOnedata) + 
  geom_point(mapping = aes(x = index_nsa, y = VCR)) +
  geom_smooth(mapping = aes(x = index_nsa, y = VCR)) +
  labs(
    title = "Housing Price Index vs Violent Crime Rate",
    x = "Housing Price Index Value",
    y = "Violent Crime Rate"
  )


