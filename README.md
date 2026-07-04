# 🌍 Travel Analytics Dashboard & Machine Learning Pipeline

## 📌 Project Overview

This project demonstrates an end-to-end Data Analytics and Machine Learning workflow using a realistic travel booking dataset. The objective is to transform raw, messy booking data into meaningful business insights through data cleaning, SQL analysis, interactive Power BI dashboards, and predictive machine learning.

The project follows a real-world analytics pipeline:

**Raw Data → Python (Data Cleaning) → MySQL (Data Warehouse) → SQL Analysis → Power BI Dashboard → Machine Learning**

---

# 🎯 Project Objectives

* Clean and preprocess messy travel booking data.
* Validate and transform data using Python.
* Store cleaned data in MySQL.
* Perform business analysis using SQL.
* Build interactive Power BI dashboards.
* Develop a Machine Learning model for prediction.
* Document the complete analytics workflow.

---

# 🛠️ Tech Stack

| Category         | Technologies     |
| ---------------- | ---------------- |
| Programming      | Python           |
| Data Cleaning    | Pandas, NumPy    |
| Database         | MySQL            |
| SQL IDE          | MySQL Workbench  |
| Visualization    | Power BI         |
| Machine Learning | Scikit-learn     |
| Notebook         | Jupyter Notebook |
| Version Control  | Git & GitHub     |

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
├── powerbi
│   └── Travel_Analytics.pbix
│
├── images
│   ├── dashboard_1.png
│   ├── dashboard_2.png
│   └── data_pipeline.png
│
├── requirements.txt
│
├── README.md
│
└── LICENSE
```

---

# 📊 Dataset Description

The project uses two related datasets designed using a Star Schema.

## Fact Table

### FACT_ORDERS

Contains booking transaction information.

Columns include:

* Order ID
* Customer ID
* Booking Date
* Travel Date
* Destination
* Package Type
* Booking Channel
* Quantity
* Booking Amount
* Discount Amount
* Booking Status
* Payment Method
* Agent Name
* Trip Duration

---

## Dimension Table

### DIM_CUSTOMERS

Contains customer demographic information.

Columns include:

* Customer ID
* Customer Name
* Email
* Phone
* Customer Type
* City
* State
* Country
* Age
* Registration Date
* Loyalty Tier
* Preferred Destination

---

# 🧹 Data Cleaning

The dataset intentionally contains common real-world data quality issues.

Cleaning tasks performed include:

* Removing duplicate records
* Handling missing values
* Standardizing date formats
* Standardizing phone numbers
* Cleaning inconsistent text formatting
* Removing unnecessary whitespace
* Fixing inconsistent categorical values
* Converting data types
* Handling invalid values
* Exporting cleaned datasets

---

# 🗄️ MySQL Database

The cleaned datasets are imported into MySQL for relational analysis.

Database Structure:

```
travel_analytics
│
├── fact_orders
└── dim_customers
```

Relationship:

```
fact_orders.customer_id
        │
        ▼
dim_customers.cust_id
```

---

# 📈 SQL Analysis

Business questions answered using SQL include:

* Total revenue generated
* Top destinations by revenue
* Revenue by booking channel
* Revenue by loyalty tier
* Revenue by customer type
* Monthly booking trends
* Average booking amount
* Average trip duration
* Customer distribution
* Package popularity

SQL concepts demonstrated:

* INNER JOIN
* GROUP BY
* ORDER BY
* Aggregate Functions
* CASE Statements
* Views
* Filtering
* Sorting

---

# 📊 Exploratory Data Analysis (EDA)

Python is used to explore the cleaned dataset before visualization.

EDA includes:

* Missing value analysis
* Distribution plots
* Correlation analysis
* Outlier detection
* Booking trends
* Customer demographics
* Revenue distribution
* Trip duration analysis

Libraries used:

* Pandas
* Matplotlib

---

# 📉 Power BI Dashboard

The project contains two interactive dashboards.

## Dashboard 1 — Executive Overview

KPIs

* Total Revenue
* Total Bookings
* Average Booking Value
* Total Customers

Visualizations

* Revenue by Destination
* Monthly Revenue Trend
* Revenue by Booking Channel
* Booking Status Distribution

Filters

* Destination
* Booking Channel
* Customer Type

---

## Dashboard 2 — Customer & Booking Insights

KPIs

* Average Trip Duration
* Average Discount
* Registered Customers

Visualizations

* Revenue by Loyalty Tier
* Revenue by Customer Type
* Top 10 Customers
* Revenue by Package Type
* Payment Method Distribution
* Customer Distribution by Country

Filters

* Loyalty Tier
* Customer Type
* Country

---

# 🤖 Machine Learning

> **Status:** 🚧 In Progress

The next phase of the project involves developing predictive models using Scikit-learn.

Potential prediction tasks include:

* Booking Status Classification
* Booking Amount Prediction

Planned algorithms:

* Logistic Regression
* Decision Tree
* Random Forest

Evaluation metrics:

* Accuracy
* Precision
* Recall
* F1 Score
* Confusion Matrix
* ROC-AUC (if applicable)

---

# 📌 Key Skills Demonstrated

* Data Cleaning
* Data Validation
* Data Transformation
* SQL Query Writing
* Relational Database Design
* Exploratory Data Analysis
* Dashboard Development
* Data Visualization
* DAX Measures
* Machine Learning
* Business Intelligence
* Data Storytelling

---

# 🚀 How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/Travel-Analytics-Project.git
```

---

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

---

### 3. Open Jupyter Notebook

Run:

```
01_data_cleaning.ipynb
```

Then execute:

```
02_eda.ipynb
```

Finally:

```
03_machine_learning.ipynb
```

---

### 4. Import Data into MySQL

Create the database:

```sql
CREATE DATABASE travel_analytics;
```

Import the cleaned CSV files into:

* fact_orders
* dim_customers

---

### 5. Open Power BI

Open:

```
Travel_Analytics.pbix
```

Refresh the data source and interact with the dashboards.

---

# 📷 Dashboard Preview

## Executive Dashboard

> *(Screenshot will be added after completion.)*

---

## Customer Dashboard

> *(Screenshot will be added after completion.)*

---

# 📚 Future Improvements

* Add predictive booking analytics
* Deploy dashboards to Power BI Service
* Automate ETL workflow
* Create interactive drill-through reports
* Add forecasting visualizations
* Deploy a Streamlit web application
* Containerize the project using Docker

---

# 👨‍💻 Author

**Jeevan Surya**

LinkedIn: *(Add your LinkedIn URL)*

GitHub: *(Add your GitHub URL)*

Email: *(Add your Email)*

---

# ⭐ If you found this project useful, consider giving the repository a star!
