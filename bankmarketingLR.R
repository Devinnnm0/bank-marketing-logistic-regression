# Load necessary library
library(caret)

# Load the dataset (important: use sep = ";" because this file uses semicolons)
bank_data <- read.csv("C:/Users/devin/Desktop/R/bank-additional-full.csv", sep = ";")

# Make sure target variable is a factor
bank_data$y <- as.factor(bank_data$y)

# Quick look at the structure and balance
str(bank_data)
table(bank_data$y)

# Split the data into training and testing sets
set.seed(42)
splitIndex <- createDataPartition(bank_data$y, p = 0.8, list = FALSE)
train_data <- bank_data[splitIndex, ]
test_data <- bank_data[-splitIndex, ]

# Build logistic regression model
model_logit <- glm(y ~ age + job + marital + education + housing + loan + month + campaign + previous, 
                   data = train_data, 
                   family = "binomial")

# View model summary
summary(model_logit)

# Predict on test data
pred_probs <- predict(model_logit, test_data, type = "response")
pred_class <- ifelse(pred_probs > 0.5, "yes", "no")
pred_class <- factor(pred_class, levels = c("no", "yes"))

# Evaluate the model
confusionMatrix(pred_class, test_data$y)
