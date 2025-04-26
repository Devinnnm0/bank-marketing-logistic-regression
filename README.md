Bank Marketing Logistic Regression Analysis
Overview
This project builds a logistic regression model to predict customer subscription outcomes for a term deposit based on demographic and marketing campaign data collected by a bank.

Objective
To predict whether a customer will subscribe to a term deposit using logistic regression and to uncover key factors that influence subscription success.

Tools Used
R
caret
base R functions

Process
Loaded and cleaned the "Bank Marketing" dataset.
Selected key features such as age, job, marital status, education level, housing and loan status, month of contact, number of contacts (campaign), and previous campaign outcomes.
One-hot encoded categorical features where necessary.
Split the data into training and testing sets.
Trained a logistic regression model using the caret library.
Evaluated model performance using a confusion matrix, accuracy score, sensitivity, specificity, and balanced accuracy.

Key Findings
The logistic regression model achieved an overall accuracy of 88.9% on the test set.
The model had very high sensitivity (98.7%) for identifying customers who would not subscribe, but low specificity (11.1%) for predicting those who would subscribe.

Key predictors of subscription success included:
Previous campaign outcome — customers who had previously engaged positively were much more likely to subscribe.
Month of contact — subscriptions were more likely in March, December, and October.
Education level — higher likelihood of subscription for customers with a university degree or labeled as illiterate.
Job role — retired individuals and students were significantly more likely to subscribe.
The results suggest that timing, past interactions, and demographic factors are critical drivers of campaign success, although predicting actual positive conversions remains a challenge using logistic regression alone.

Files
bankmarketingLR.R — Full R script for data preparation, logistic regression modeling, and evaluation.

How to Run
Install required R libraries: caret.
Ensure you have access to the bank-additional-full.csv dataset.
Open and run the R script sequentially to reproduce the model and evaluation.
