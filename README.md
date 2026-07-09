# 📊 Retail Sales Performance Analysis Dashboard

<img width="969" height="736" alt="Screenshot (191)" src="https://github.com/user-attachments/assets/cab5b94a-b0b8-43fe-9073-42ffe53a2755" />


<p align="center">

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-0078D4?style=for-the-badge)
![Data Modeling](https://img.shields.io/badge/Star_Schema-0052CC?style=for-the-badge)
![Business Intelligence](https://img.shields.io/badge/Business_Intelligence-4B0082?style=for-the-badge)

</p>

---

# 📌 Project Overview

Modern businesses generate millions of retail transactions every year. Turning this raw data into meaningful business decisions requires an efficient Business Intelligence solution.

This project demonstrates an **end-to-end Retail Sales Analytics solution** built using **SQL Server** and **Power BI** to analyze sales performance, customer behavior, product trends, and profitability through interactive executive dashboards.

The solution empowers decision-makers with real-time insights to monitor KPIs, identify growth opportunities, and improve overall business performance.

---

# 💼 Business Problem

Retail executives often struggle with answering critical business questions because sales information is spread across multiple reports.

### Challenges

📈 Monitor overall sales performance

🌍 Compare regional performance

👥 Identify high-value customers

📦 Analyze product performance

💰 Understand profitability

🏷 Evaluate discount impact

---

# 🎯 Project Objectives

This project answers the following business questions:

✅ Which region generates the highest revenue?

✅ Which customer segment contributes the most sales?

✅ Which products generate the highest revenue?

✅ Which products consistently generate losses?

✅ How do discounts impact profitability?

✅ Which shipping mode generates the highest profit?

---

# 🗂 Dataset

### Dataset

**Superstore Sales Dataset (2014–2017)**

The dataset contains retail transaction data including:

- Orders
- Customers
- Products
- Sales
- Profit
- Quantity
- Discount
- Region
- Shipping Details

🔗 **Dataset Source**

https://www.kaggle.com/datasets/vivek468/superstore-dataset-final

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|----------|
| 🗄 SQL Server | Database & Data Preparation |
| 📊 Power BI | Dashboard Development |
| 📈 DAX | KPI Calculations |
| 🔄 SQL Views | Reporting Layer |
| ⭐ Star Schema | Data Modeling |

---

# 🧹 Data Cleaning

The dataset was prepared before visualization to ensure data quality.

✔ Removed duplicate records

✔ Validated missing values

✔ Corrected data types

✔ Built Fact & Dimension tables

✔ Created SQL Views

✔ Established relationships using Star Schema

---

# 🔄 Analysis Process

```text
CSV Dataset
      │
      ▼
SQL Server
      │
      ▼
Data Cleaning
      │
      ▼
Star Schema
      │
      ▼
SQL Views
      │
      ▼
Power BI
      │
      ▼
DAX Measures
      │
      ▼
Interactive Dashboard
```

---

# 📊 Dashboard

## 📈 Executive Sales Dashboard

Provides an executive overview of:

- Revenue
- Profit
- Profit Margin
- Monthly Revenue Trend
- Revenue by Region
- Revenue by Category

📷 **Dashboard Preview**

<img width="969" height="736" alt="Screenshot (191)" src="https://github.com/user-attachments/assets/fc57ea0a-008d-4657-b41f-a299cdebb2fd" />


---

## 👥 Customer & Product Dashboard

Provides insights into:

- Top Customers
- Top Products
- Revenue by Segment
- Revenue by Sub-category

📷 **Dashboard Preview**
<img width="1170" height="744" alt="Screenshot (192)" src="https://github.com/user-attachments/assets/6bc574fd-900c-455b-8331-1a3694ce75b2" />


---

## 💰 Profitability Dashboard

Analyzes:

- Monthly Profit Trend
- Profit by Region
- Profit by Ship Mode
- Average Discount
- Top Loss-Making Products

📷 **Dashboard Preview**
<img width="1068" height="752" alt="Screenshot (193)" src="https://github.com/user-attachments/assets/cda59ee0-b0de-443d-9b5a-df9454bc160c" />


---

# 🔍 Key Insights

🏆 West region generated the highest revenue and profit.

👥 Consumer segment contributed over **50%** of total revenue.

💻 Technology category generated the highest sales.

🚚 Standard Class shipping generated the highest profit.

⚠ Higher discounts did not consistently improve profitability.

📉 Several products generated negative profit despite healthy sales.

---

# 💡 Recommendations

✔ Optimize discount strategies for low-margin products.

✔ Strengthen customer loyalty initiatives.

✔ Expand investment in Technology products.

✔ Improve pricing strategies for loss-making products.

✔ Replicate successful sales strategies across regions.

✔ Monitor business KPIs through interactive dashboards.

---

# 📂 Repository Structure

```text
Retail-Sales-PowerBI-Dashboard
│
├── 📄 README.md
│
├── 📊 Dashboard
│   ├── Retail Sales Dashboard.pbix
│   ├── Executive Dashboard.png
│   ├── Customer Dashboard.png
│   └── Profitability Dashboard.png
│
├── 🗄 SQL Scripts
│   ├── 01_Create_Dimensions.sql
│   ├── 02_Create_FactSales.sql
│   ├── 03_SQL_Views.sql
│   └── 04_Analysis_Queries.sql
│
├── 📁 Dataset
│   └── Superstore.csv
│
├── 📑 Presentation
│   └── Retail Sales Case Study.pdf
│
└── 🎥 Demo
    └── Dashboard Demo.mp4
```

---

# 🚀 How to Use This Project

### Step 1

Clone this repository.

```bash
git clone https://github.com/your-username/retail-sales-powerbi-dashboard.git
```

### Step 2

Execute the SQL scripts in SQL Server.

### Step 3

Open the Power BI (.pbix) file.

### Step 4

Update the SQL Server connection.

### Step 5

Refresh the dataset.

### Step 6

Explore the dashboard using interactive slicers.

---

# 📈 Business Impact

This solution enables organizations to:

📊 Monitor executive KPIs

📈 Track sales performance

💰 Improve profitability

👥 Understand customer behavior

📦 Optimize product strategy

⚡ Make faster, data-driven decisions

---

# 🏆 Skills Demonstrated

- SQL Server
- Power BI
- DAX
- SQL Views
- Star Schema
- Data Modeling
- KPI Development
- Dashboard Design
- Business Intelligence
- Data Visualization
- Exploratory Data Analysis (EDA)

---

# 👩‍💻 Author

**Pavani Mynam**

