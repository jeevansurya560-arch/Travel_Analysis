# 🌍 Travel Analytics Dashboard & Machine Learning Pipeline

![Python](https://img.shields.io/badge/Python-3.11-blue?logo=python)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange?logo=mysql)
![Power%20BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![Scikit--Learn](https://img.shields.io/badge/Scikit--Learn-Machine%20Learning-F7931E?logo=scikitlearn)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📖 Overview

This project demonstrates an **end-to-end Data Analytics and Machine Learning workflow** built using a realistic travel booking dataset. It showcases how raw transactional data can be transformed into actionable business insights through data cleaning, SQL-based analysis, interactive Power BI dashboards, and predictive machine learning.

The project follows an industry-inspired analytics lifecycle:

```
Raw Data
    │
    ▼
Python Data Cleaning
    │
    ▼
MySQL Database
    │
    ▼
SQL Business Analysis
    │
    ▼
Exploratory Data Analysis (EDA)
    │
    ▼
Power BI Dashboard
    │
    ▼
Machine Learning Model
```

The goal is not only to analyze historical travel booking data but also to demonstrate the complete workflow expected in a modern Data Analyst or Business Intelligence project.

---

# 🎯 Business Problem

Travel companies generate thousands of booking transactions every day from multiple channels such as websites, mobile applications, travel agents, and third-party partners.

Raw booking data often contains:

* Missing values
* Duplicate records
* Inconsistent date formats
* Invalid customer information
* Mixed data types
* Data quality issues

Without proper preprocessing, businesses cannot accurately measure performance, identify customer trends, or build predictive models.

This project demonstrates how these challenges can be addressed using modern data analytics tools.

---

# 🎯 Project Objectives

The project aims to:

* Clean and preprocess messy travel booking data.
* Validate and standardize customer information.
* Store cleaned datasets in a relational database.
* Perform business analysis using SQL.
* Build interactive dashboards using Power BI.
* Develop Machine Learning models for booking prediction.
* Compare multiple ML algorithms.
* Identify the most influential booking features.
* Document the entire analytics pipeline.

---

# 🛠️ Tech Stack

| Category           | Technologies     |
| ------------------ | ---------------- |
| Programming        | Python           |
| Data Cleaning      | Pandas, NumPy    |
| Database           | MySQL            |
| SQL IDE            | MySQL Workbench  |
| Data Visualization | Power BI         |
| Machine Learning   | Scikit-learn     |
| Notebook           | Jupyter Notebook |
| Version Control    | Git & GitHub     |

---

# 📂 Project Structure

```
Travel-Analytics-Project
│
├── data
│   ├── raw
│   │   ├── FACT_ORDERS.csv
│   │   └── DIM_CUSTOMERS.csv
│   │
│   └── cleaned
│       ├── fact_orders_clean.csv
│       └── dim_customers_clean.csv
│
├── notebooks
│   ├── 01_data_cleaning.ipynb
│   ├── 02_eda.ipynb
│   └── 03_machine_learning.ipynb
│
├── sql
│   ├── schema.sql
│   ├── data_import.sql
│   └── analysis_queries.sql
│
├── models
│   └── best_travel_model.pkl
│
├── powerbi
│   └── Travel_Analytics.pbix
│
├── images
│   ├── dashboard1.png
│   ├── dashboard2.png
│   ├── feature_importance.png
│   └── confusion_matrix.png
│
├── requirements.txt
├── README.md
└── LICENSE
```

---

# 🗃️ Dataset Description

The project follows a **Star Schema** data model consisting of one fact table and one dimension table.

## FACT_ORDERS

Stores booking transaction details.

| Column          |
| --------------- |
| Order ID        |
| Customer ID     |
| Booking Date    |
| Travel Date     |
| Destination     |
| Package Type    |
| Booking Channel |
| Quantity        |
| Booking Amount  |
| Discount Amount |
| Booking Status  |
| Payment Method  |
| Agent Name      |
| Trip Duration   |

---

## DIM_CUSTOMERS

Stores customer demographic information.

| Column                |
| --------------------- |
| Customer ID           |
| Customer Name         |
| Email                 |
| Phone                 |
| Customer Type         |
| City                  |
| State                 |
| Country               |
| Age                   |
| Registration Date     |
| Loyalty Tier          |
| Preferred Destination |

---

# ⭐ Database Schema

```
              DIM_CUSTOMERS
              -------------
              cust_id (PK)
              customer_name
              email
              phone
              city
              state
              country
              age
              loyalty_tier
              preferred_destination
                     ▲
                     │
                     │
              customer_id (FK)
              FACT_ORDERS
              -------------
              order_id
              booking_date
              travel_date
              destination
              package_type
              booking_channel
              booking_amount
              discount_amount
              booking_status
              payment_method
              trip_duration_days
```

---

# 🧹 Data Cleaning Process

The raw dataset intentionally contained several real-world data quality issues to simulate production environments.

### Cleaning Steps

✔ Removed duplicate records

✔ Standardized inconsistent text values

✔ Corrected mixed date formats

✔ Converted columns to appropriate data types

✔ Standardized categorical values

✔ Removed extra whitespace

✔ Handled missing values

✔ Validated customer records

✔ Checked numerical outliers

✔ Exported cleaned datasets

---

# 🗄️ MySQL Database

After preprocessing, the cleaned datasets were imported into MySQL for relational analysis.

Database Name:

```
travel_analytics
```

Tables:

```
fact_orders

dim_customers
```

Relationship:

```
fact_orders.customer_id
          │
          ▼
dim_customers.cust_id
```

---

# 📈 SQL Business Analysis

Several SQL queries were written to answer business questions.

### Revenue Analysis

* Total Revenue
* Average Booking Value
* Monthly Revenue
* Revenue by Destination
* Revenue by Booking Channel
* Revenue by Loyalty Tier

### Customer Analysis

* Customer Distribution
* Registered vs Guest Customers
* Country-wise Customer Count

### Booking Analysis

* Booking Status Distribution
* Package Popularity
* Payment Method Analysis
* Average Trip Duration

### SQL Concepts Demonstrated

* INNER JOIN
* GROUP BY
* ORDER BY
* Aggregate Functions
* CASE Statements
* Views
* Filtering
* Sorting
* Aliases

---

# 📊 Exploratory Data Analysis (EDA)

Python was used to analyze trends before dashboard development.

The following analyses were performed:

* Missing Value Analysis
* Booking Distribution
* Revenue Distribution
* Destination Analysis
* Customer Demographics
* Booking Status Distribution
* Discount Analysis
* Trip Duration Analysis
* Correlation Analysis
* Outlier Detection

### Libraries Used

* Pandas
* NumPy
* Matplotlib

---

# 📊 Power BI Dashboard

Two interactive dashboards were developed.

## Dashboard 1 – Executive Overview

### KPI Cards

* Total Revenue
* Total Bookings
* Average Booking Value
* Total Customers

### Visualizations

* Revenue by Destination
* Monthly Revenue Trend
* Revenue by Booking Channel
* Booking Status Distribution

### Slicers

* Destination
* Booking Channel
* Customer Type

---

## Dashboard 2 – Customer Insights

### KPI Cards

* Average Trip Duration
* Average Discount
* Registered Customers

### Visualizations

* Revenue by Loyalty Tier
* Revenue by Customer Type
* Top Customers
* Revenue by Package Type
* Payment Method Distribution
* Customer Distribution by Country

### Slicers

* Loyalty Tier
* Customer Type
* Country
---

# 🤖 Machine Learning

The final phase of this project focuses on building predictive models to classify the **booking status** based on customer demographics and booking information.

## 🎯 Business Objective

Predict whether a travel booking is likely to be:

* Completed
* Cancelled
* Pending

Such predictions can help travel companies:

* Identify bookings at risk of cancellation.
* Improve customer engagement strategies.
* Optimize promotional campaigns.
* Support business decision-making using predictive analytics.

---

# 🧠 Machine Learning Workflow

```text
Load Cleaned Data
        │
        ▼
Merge Fact & Dimension Tables
        │
        ▼
Data Preprocessing
        │
        ▼
Feature Engineering
        │
        ▼
Encoding Categorical Variables
        │
        ▼
Train-Test Split (80:20)
        │
        ▼
Model Training
        │
        ▼
Model Evaluation
        │
        ▼
Hyperparameter Tuning
        │
        ▼
Cross Validation
        │
        ▼
Feature Importance
        │
        ▼
Model Serialization (.pkl)
```

---

# ⚙️ Data Preprocessing

The following preprocessing steps were performed before training the models:

* Merged fact and dimension tables.
* Removed unnecessary identifier columns.
* Converted date columns into datetime format.
* Extracted useful date features.
* Encoded categorical variables.
* Created feature matrix (**X**) and target variable (**y**).
* Split the dataset into training and testing sets.

---

# 🧪 Machine Learning Models

Multiple supervised classification algorithms were trained and compared.

| Model               | Purpose                   |
| ------------------- | ------------------------- |
| Logistic Regression | Baseline Classification   |
| Decision Tree       | Rule-Based Classification |
| Random Forest       | Ensemble Learning         |
| Tuned Random Forest | Final Optimized Model     |

---

# 📊 Model Evaluation Metrics

The following metrics were used to evaluate each model:

* Accuracy
* Precision
* Recall
* F1-Score
* Classification Report
* Confusion Matrix
* 5-Fold Cross Validation

---

# ⭐ Best Performing Model

**Model:** Tuned Random Forest

The final model was optimized using **RandomizedSearchCV** and validated using **5-fold cross-validation** to improve generalization.

The trained model was saved as:

```text
models/best_travel_model.pkl
```

This allows predictions to be made without retraining the model.

---

# 📈 Feature Importance

The Random Forest model was used to identify the most influential features contributing to booking status prediction.

Example output:

* Booking Amount
* Discount Amount
* Booking Channel
* Package Type
* Loyalty Tier
* Trip Duration
* Customer Type

> Add the generated **Feature Importance** plot here after running the notebook.

---

# 📉 Confusion Matrix

A confusion matrix was generated to evaluate prediction performance across all booking status classes.

> Add the confusion matrix screenshot here.

---

# 💼 Business Insights

The analysis generated several actionable business insights, including:

* Identified the destinations generating the highest revenue.
* Compared booking performance across channels.
* Evaluated customer distribution by loyalty tier.
* Analyzed booking behavior across customer types.
* Measured the impact of discounts on booking values.
* Identified package types contributing the highest revenue.
* Compared payment method usage.
* Built a predictive model for booking status classification.

---

# 📸 Dashboard Preview

## Executive Dashboard

> Add screenshot here

```
images/dashboard1.png
```

---

## Customer Insights Dashboard

> Add screenshot here

```
images/dashboard2.png
```

---

## Feature Importance

> Add screenshot here

```
images/feature_importance.png
```

---

## Confusion Matrix

> Add screenshot here

```
images/confusion_matrix.png
```

---

# 🚀 Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/Travel-Analytics-Project.git
```

Move into the project directory:

```bash
cd Travel-Analytics-Project
```

Install the required packages:

```bash
pip install -r requirements.txt
```

---

# ▶️ Running the Project

### Step 1

Run the data cleaning notebook:

```text
01_data_cleaning.ipynb
```

---

### Step 2

Run exploratory data analysis:

```text
02_eda.ipynb
```

---

### Step 3

Run the machine learning notebook:

```text
03_machine_learning.ipynb
```

---

### Step 4

Create the MySQL database:

```sql
CREATE DATABASE travel_analytics;
```

Import the cleaned datasets into:

* fact_orders
* dim_customers

Run the SQL scripts available in the **sql** folder.

---

### Step 5

Open:

```text
Travel_Analytics.pbix
```

Refresh the MySQL connection to interact with the dashboards.

---

# 📁 Repository Contents

```
✔ Raw Dataset

✔ Cleaned Dataset

✔ Python Cleaning Notebook

✔ Exploratory Data Analysis Notebook

✔ Machine Learning Notebook

✔ SQL Scripts

✔ Power BI Dashboard

✔ Saved ML Model (.pkl)

✔ Dashboard Images

✔ README

✔ Requirements File
```

---

# 📚 Future Improvements

Possible enhancements include:

* Replace label encoding of features with one-hot encoding.
* Deploy the model using Streamlit.
* Publish dashboards using Power BI Service.
* Automate the ETL pipeline.
* Add real-time booking data integration.
* Implement advanced models such as XGBoost.
* Deploy the model using Docker and cloud services.

---

# 🎓 Skills Demonstrated

## Data Analytics

* Data Cleaning
* Data Validation
* Data Transformation
* Exploratory Data Analysis
* Business Intelligence
* Data Visualization
* Dashboard Design

## SQL

* Joins
* Views
* Aggregations
* Filtering
* Sorting
* Grouping
* Database Design

## Machine Learning

* Classification
* Feature Engineering
* Model Evaluation
* Hyperparameter Tuning
* Cross Validation
* Feature Importance
* Model Serialization

## Tools

* Python
* Pandas
* NumPy
* MySQL
* Power BI
* Scikit-learn
* Jupyter Notebook
* Git
* GitHub

---

# 👨‍💻 Author

**Jeevan Surya Jalli**

📍 Visakhapatnam, Andhra Pradesh, India

📧 Email: [jalli.jeevansurya1019@gmail.com](mailto:jalli.jeevansurya1019@gmail.com)

💼 LinkedIn: https://www.linkedin.com/in/jeevan-surya

💻 GitHub: https://github.com/jeevansurya560-arch

