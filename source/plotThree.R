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
<<<<<<< HEAD
View(plotThreeData)
=======

>>>>>>> 5973fce78dd30ff1c44e538cb032438b3ce9493b

plotThree <- ggplot(plotThreeData, aes(x= HPI_group, y = crime_percentage, fill = HPI_group)) +
  geom_boxplot(na.rm = TRUE)

<<<<<<< HEAD
ggplotly(plotThree)
#Purpose: The purpose of this plot is to answer the question regarding the difference
# between crime rates in low income and high income areas. The boxplots are included 
# because they delineates the spread of the data (percentage of crime) across each
# of the 4 categories: high, low, medium, and N/A.
#Insights: There are no outliers in the high category, and it has an IQR of 0.74. 
# There are several outliers in the low category, and it has an IQR of 0.94,
# indicating it has a relatively high spread from the mean as opposed to other 
# categories. There are some outliers in the medium category,and it has an IQR 
# of 0.63. Overall, the boxplots show that low income areas have the highest 
# percentage of crime, and the data extend beyond the whiskers of the plot (meaning
# that there areoutliers). It's a fair assumption to make that low income 
# areas have a higher percentage of crime as opposed to higher income areas.
=======
>>>>>>> 5973fce78dd30ff1c44e538cb032438b3ce9493b

