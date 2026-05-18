library(readr)
library(dplyr)

laptop <- read_csv("~/R/Analyzed Data/Laptop-Price-Analysis/Data/laptop_scrap_data.csv")

# Checks the data types present in the dataset
sapply(laptop, class) # checks the data types in the dataset

# Basic cleaning
# Here we modify the data based on our needs i.e change from string to numeric
laptop <- laptop %>%
  mutate(
    Price = as.numeric(Price),
    Ram_GB = as.numeric(Ram_GB),
    SSD = as.numeric(SSD),
    Weight_kg = as.numeric(Weight_kg),
    Company = as.factor(Company), # used as.factor to make the data categorical
    OpSys = as.factor(OpSys),
    Dedicated_Gpu = as.factor(Dedicated_Gpu)
  )

head(laptop)

# Remove missing values
laptop <- na.omit(laptop)

# Save cleaned data
write.csv(laptop, "~/R/Analyzed Data/Laptop-Price-Analysis/Data/Laptop_Cleaned_Dataset.csv", row.names = FALSE)