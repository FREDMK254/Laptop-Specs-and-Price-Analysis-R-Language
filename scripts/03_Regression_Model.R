library(dplyr)

laptop <- read_csv("~/R/Analyzed Data/Laptop-Price-Analysis/Data/Laptop_Cleaned_Dataset.csv")

# log transform
laptop$logPrice <- log(laptop$Price)

# Final Model
# model <- lm(logPrice ~ Ram_GB + SSD + Weight_kg + Dedicated_Gpu + Company, data = laptop)
# summary(model)
# pred <- predict(model)
# rmse <- sqrt(mean((laptop$logPrice - pred)^2))
# rmse

set.seed(123)

train_index <- sample(1:nrow(laptop), 0.8 * nrow(laptop))
train <- laptop[train_index, ]
test <- laptop[-train_index, ]

model <- lm(logPrice ~ Ram_GB + SSD + Weight_kg + Dedicated_Gpu + Company, data = train)

pred <- predict(model, newdata = test)
rmse <- sqrt(mean((test$logPrice - pred)^2))
rmse
