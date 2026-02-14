# 📊 Inventory Demand & Profitability Analysis  
### (Test-to-Production BI Workflow using MySQL & Power BI)

---

## 🔍 Project Overview

This project demonstrates an end-to-end Business Intelligence workflow using MySQL as a backend database and Power BI for interactive dashboard development.

The primary objective of this project is to analyze demand vs availability and measure its impact on overall profitability in an inventory management context.

The solution was first developed in a **Test Environment (testdb)** and later migrated to a **Production Environment (proddb)**, simulating a real-world BI deployment workflow.

---

## 🎯 Business Objective

- Analyze demand vs availability gap
- Identify supply shortages
- Measure profitability impact
- Quantify financial loss due to unmet demand
- Track daily inventory performance trends

---

## 🛠 Tools & Technologies Used

- MySQL (Test & Production Databases)
- Power BI Desktop
- DAX (Data Analysis Expressions)
- SQL (LEFT JOIN, Data Cleaning, Updates)
- Canva (Dashboard background design)

---

## 🗄 Database Design

### Databases:
- `testdb` – Used for initial development and validation
- `proddb` – Used to simulate production deployment

### Tables:
- `product`
- `inventory`
- `new_table` (Created using LEFT JOIN)

### Join Logic:
A LEFT JOIN was used to combine `product` and `inventory` tables to ensure all product records were retained. 

---

## 🔄 Data Engineering & Migration Workflow

1. Created separate databases for test and production environments.
2. Imported CSV data into both databases.
3. Checked and cleaned NULL values.
4. Created a consolidated table using LEFT JOIN.
5. Standardized column names across both environments.
6. Migrated Power BI connection from `testdb` to `proddb`.
7. Encountered "Data key not matching" error.
8. Resolved issue by aligning schema and column names in both databases.
9. Updated Product_ID in production due to newly added products.

---

## 📊 Power BI Dashboard Overview

### Dashboard Pages:
1. Inventory Performance Overview
2. Product-Level Profitability Analysis

### Key KPIs:
- Total Availability
- Total Demand
- Average Availability per Day
- Average Demand per Day
- Total Supply Shortage
- Total Profit
- Total Loss
- Average Daily Loss

### Filters Used:
- Date Filter
- Product Filter

---

## 🧠 Key DAX Measures

Measures Created:

Total Availability = Sum(new_table[Availability])

Total Demand = SUM(new_table[Demand])

Total number of days = COUNT(new_table[Order_Date].[Date])

Total Supply Shortage = ([Total Availability] - [Total Demand]) * -1

Avg Availability per day = DIVIDE([Total Availability], [Total number of days])

Avg Daily Loss = DIVIDE([Total loss], [Total number of days])

Avg Demand per day = DIVIDE([Total Demand], [Total number of days])

Total Profit = SUMX(FILTER(new_table, [Profit/Loss] > 0), [Profit/Loss] * new_table[Unit_Price])

Total loss = SUMX(FILTER(new_table, [Profit/Loss] < 0), [Profit/Loss] * new_table[Unit_Price]) * -1

---

## 📸 Dashboard Preview

### 🔹 Inventory Performance Overview in testdb

<p align="center">
  <img src="3_Screenshots/Screenshot (72).png" width="850">
</p>


### 🔹 Profit/Loss Analysis in testdb

<p align="center">
  <img src="3_Screenshots/Screenshot (74).png" width="850">
</p>


### 🔹 Inventory Performance Overview in proddb

<p align="center">
  <img src="3_Screenshots/Screenshot (70).png" width="850">
</p>


### 🔹 Profit/Loss Analysis in proddb

<p align="center">
  <img src="3_Screenshots/Screenshot (71).png" width="850">
</p>

---


## 🚧 Challenges Faced

**Issue:**  
Data key mismatch error during migration from testdb to proddb.

**Resolution:**  
- Standardized column names across both databases.
- Ensured schema consistency before refreshing in Power BI.
- Updated Product_ID for new entries in production.

---

## 📈 Key Insights Generated

- Identified products with recurring supply shortages.
- Measured daily demand-supply gap.
- Quantified financial loss caused by inventory mismatch.
- Highlighted high-risk inventory segments impacting profitability.

---

## 🏆 Key Learnings

- Importance of schema consistency across environments.
- Real-world BI migration challenges.
- Proper use of SUMX in profitability calculations.
- Backend changes directly impact reporting layer.
- Importance of clean and standardized data modeling.

---

## 📂 Repository Structure

Inventory-Demand-Profitability-Analysis
1. SQL
2. PowerBI
3. Screenshots
README.md

---

## 👨‍💻 Author

**RAvi Mamgai**
Aspiring Data Analyst | Power BI | MySQL | Business Intelligence

---

## 📌 Note

This project uses dummy data for demonstration purposes only.
