source("source/cleanData.R")

plotOnedata <- hpi_crime_clean %>%
  mutate(VCR_100k = (Violent.Crimes/Population)) 

plotOne <- ggplot(data = plotOnedata) + 
  geom_point(mapping = aes(x = index_nsa, y = VCR_100k)) +
  geom_smooth(mapping = aes(x = index_nsa, y = VCR_100k)) +
  scale_color_discrete()

ggplotly(plotOne)

