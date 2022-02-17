source("source/cleanData.R")
summary_info <- list()
summary_info$num_observations <- nrow(hpi_crime_clean)
summary_info$num_features <- ncol(hpi_crime_clean)
summary_info$min_hpi_value <- hpi_crime_clean %>% 
  pull(index_nsa) %>% 
  min(na.rm = TRUE)
summary_info$max_hpi_value <- hpi_crime_clean %>% 
  pull(index_nsa) %>% 
  max(na.rm = TRUE)
summary_info$mean_hpi_value <- hpi_crime_clean %>% 
  pull(index_nsa) %>% 
  mean(na.rm = TRUE)
summary_info$num_city_state <- hpi_crime_clean %>% 
  select(City..State) %>% 
  distinct() %>% 
  count() %>% 
  pull()
summary_info$major_crime <- c("Homicides", "Rapes", "Assaults", "Robberies")
  