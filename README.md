# Bank Marketing Logistic Regression Analysis

## Overview
This project builds a logistic regression model to predict customer subscription outcomes for a term deposit based on demographic and marketing campaign data collected by a bank.

## Objective
- Predict whether a customer will subscribe to a term deposit using logistic regression.
- Identify key factors that influence subscription success.

## Tools Used
- R
- caret
- base R functions

## Key Findings
- **Model Accuracy:** The logistic regression model achieved an overall accuracy of 88.9% on the test set.
- **Sensitivity vs Specificity:** The model had very high sensitivity (98.7%) for identifying customers who would not subscribe, but low specificity (11.1%) for predicting those who would subscribe.
- **Key Predictors:**
  - **Previous campaign outcome:** Customers with positive prior engagements were much more likely to subscribe.
  - **Month of contact:** Higher subscription rates occurred in March, December, and October.
  - **Education level:** University degree holders and those labeled as illiterate had higher subscription rates.
  - **Job role:** Retired individuals and students showed significantly higher likelihood of subscription.
- **Insight:** Timing, prior interactions, and demographic factors play major roles in campaign success, though predicting positive conversions remains challenging using logistic regression alone.

## Files
- `bankmarketingLR.R` — R script for data preparation, logistic regression modeling, and evaluation.

## How to Run
1. Install required R libraries: `caret`.
2. Ensure you have access to the `bank-additional-full.csv` dataset.
3. Open and run the `bankmarketingLR.R` script sequentially to reproduce the model and evaluation.
