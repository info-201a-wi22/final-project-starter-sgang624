source("source/cleanData.R")

plotOnedata <- hpi_crime_clean %>%
  mutate(VCR_100k = (Violent.Crimes/Population)) 

plotOne <- ggplot(data = plotOnedata) + 
  geom_point(mapping = aes(x = index_nsa, y = VCR_100k)) +
  geom_smooth(mapping = aes(x = index_nsa, y = VCR_100k)) +
  labs(
    title = "Housing Price Index vs Violent Crime Rate",
    x = "Housing Price Index Value",
    y = "Violent Crime Rate (per 100,000 people)"
  )

ggplotly(plotOne)

