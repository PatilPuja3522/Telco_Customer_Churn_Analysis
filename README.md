# Telco Customer Churn Analysis 📊

An end-to-end customer churn analysis project using **Python, SQL Server, and Power BI** to understand why customers leave, identify high-risk customer segments, and quantify revenue at risk.

## 📌 Business Problem

Why are customers leaving, and which customer segments should the business prioritize to reduce churn?

This project analyzes 7,043 telco customers and identifies the key factors associated with customer churn, including contract type, payment method, tenure, internet service, and monthly charges.

## 📊 Key Metrics

- **Total Customers:** 7,043
- **Overall Churn Rate:** 26.5%
- **Monthly Revenue at Risk:** $139.1K
- **Share of Revenue at Risk:** 30.5%

## 🔍 Key Insights

### 1. Contract Type

Contract type shows a strong relationship with churn.

- Month-to-month: 42.7% churn
- One-year: 11.3% churn
- Two-year: 2.8% churn

### 2. Payment Method

Electronic check customers have a higher churn rate compared with customers using automatic payment methods.

- Electronic check: 45.3%
- Bank transfer: 16.7%
- Credit card: 15.2%

### 3. Customer Tenure

Churn is concentrated among newer customers, particularly during the first 10 months of tenure. Customers who remain beyond the first year are more likely to stay longer.

### 4. Internet Service

Fiber optic customers have the highest churn rate among the internet service categories despite having higher monthly charges.

### 5. Monthly Charges

Customers who churn tend to have higher monthly charges than customers who stay, indicating a relationship between pricing and churn behavior.

## 🛠️ Tools & Technologies

### Python
- Pandas — Data Cleaning & Data Manipulation
- Matplotlib — Data Visualization
- Exploratory Data Analysis (EDA)

### SQL Server
- Data querying
- Aggregations
- Churn analysis
- Customer segmentation

### Power BI
- KPI Cards
- Interactive Charts
- Slicers
- Customer Segmentation
- Dynamic Insights
  
## 🔄 Project Workflow

Raw Customer Data
        ↓
Python / Pandas
        ↓
Data Cleaning & Preparation
        ↓
SQL Server
        ↓
Data Analysis & Aggregation
        ↓
Power BI
        ↓
Interactive Churn Dashboard
        ↓
Business Insights

## 📈 Power BI Dashboard

The Power BI dashboard includes:

- Total Customers
- Churn Rate
- Monthly Revenue at Risk
- Average Tenure of Churned Customers
- Churn Rate by Contract
- Churn Rate by Payment Method
- Churn by Internet Service
- Tenure Distribution
- Interactive Filters / Slicers
- Dynamic Business Insights

## 💡 Business Recommendations

Based on the analysis:

1. Encourage month-to-month customers to move toward longer-term contracts.
2. Encourage customers using electronic checks to adopt automatic payment methods.
3. Focus retention and onboarding efforts during the first 90 days.
4. Investigate pricing, reliability, and support experience for Fiber optic customers.

## 🧹 Data Preparation

Data was cleaned using Python and Pandas.

Key preparation steps included:

- Handling blank `TotalCharges` values
- Preparing customer-level data for analysis
- Converting churn information into an analysis-friendly format

## 🗄️ SQL Server Analysis

SQL Server was used to analyze churn across:

- Contract type
- Payment method
- Tenure groups
- Internet service
- Customer segments
- Related combinations of customer attributes

## 📊 Dashboard Preview

![Telco-Customer-Churn_Dashboard](images/Telco-Customer-Churn_Dashboard.png)

## 📁 Project Structure

```text
Telco_Customer_Churn_Analysis/
│
├── data/
│   └── telco_customer_churn.csv
│
├── python/
│   └── churn_analysis.ipynb
│
├── sql/
│   └── churn_analysis.sql
│
├── powerbi/
│   └── Telco_Customer_Churn.pbix
│
├── reports/
│   └── Telco_Churn_Business_Report.pdf
│
├── images/
│   └── dashboard.png
│
└── README.md


### 🎯 Project Objective

The main objective of this project is to transform raw customer data into actionable business insights by combining data cleaning, SQL analysis, and interactive Power BI visualization.

### 👤 Author

Your Name : Puja Patil
