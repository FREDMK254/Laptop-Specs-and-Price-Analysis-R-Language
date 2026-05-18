library(ggplot2)
library(dplyr)

laptop <- read_csv("~/R/Analyzed Data/Laptop-Price-Analysis/Data/Laptop_Cleaned_Dataset.csv")

# Price Distribution
ggplot(laptop, aes(Price)) +
  geom_histogram(bins = 30) + 
  theme_minimal()

# RAM vs Price
ggplot(laptop, aes(Ram_GB, Price)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm") +
  theme_minimal()

# SSD vs Price
ggplot(laptop, aes(SSD, Price)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm") +
  theme_minimal()

# Company Comparison
ggplot(laptop, aes(Company, Price)) +
  geom_boxplot() +
  theme_minimal() +
  coord_flip()