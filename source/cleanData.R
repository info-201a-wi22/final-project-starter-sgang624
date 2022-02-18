# Clean Data Script
#----------------------------------------------------------------------------#
# Load HPI_CrimeRate.csv into a dataframe. Use dplyr to filter out empty rows
# to make sure the data is clean.
#
# Please change the working directory function to the path where the local
# repository is stored.
#----------------------------------------------------------------------------#
library(tidyverse)
hpi_crime_raw <- read.csv("data/HPI_CrimeRate.csv")
clean_data <- function(data){
  clean <- data %>% 
    filter(Year != "")
  return(clean)
}
hpi_crime_clean <- clean_data(hpi_crime_raw)
?getwd
