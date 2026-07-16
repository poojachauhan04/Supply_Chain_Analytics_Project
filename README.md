# Supply Chain Performance & Operational Efficiency Analysis 📊

An end-to-end data analytics project focusing on evaluating supply chain efficiency, identifying logistics bottlenecks, and optimizing inventory management using **Python, SQL,** and **Power BI**.

## 📌 Project Overview

This dataset acts as a Supply Chain Efficiency Monitor, providing a complete view of how
products move from suppliers to customers while tracking time, inventory, and costs. It is
structured around three key areas: logistics, which helps identify delays in processing and
shipping; inventory, which ensures stock levels are balanced and highlights risks like
shortages or overstocking; and financials, which evaluate overall profitability by analyzing
sales and various costs. Together, these elements make the dataset a powerful diagnostic
tool that helps identify inefficiencies, reduce costs, and improve overall business
performance. The main goal is to understand how warehouses and product categories are
performing by looking at inventory, demand, costs and risks. By cleaning and organizing the
data, the project aims to convert raw data into meaningful insights.

## 🛠️ Tech Stack

- **Data Cleaning & Transformation**: Python (Pandas, NumPy)  
- **Database Management & Analysis**: SQL (MySQL, PostgreSQL)  
- **Data Visualization**: Power BI (DAX, Power Query)  
- **Analytical Concepts**: Correlation Analysis, Outlier Detection, Inventory Gap Analysis.

## 📊 Business Problems Solved

- **Logistics Bottlenecks**: Identified locations where delivery delays directly impacted customer ratings.  
- **Inventory Gaps**: Analyzed stock-to-demand ratios to highlight warehouses at high risk of stockouts.  
- **Profitability Leaks**: Evaluated the financial impact of 'Fast Shipping' vs. 'Standard Shipping' costs.  
- **Operational Efficiency**: Pinpointed underutilized warehouse spaces and damaged goods trends.  

## 🚀 Project Workflow

## Phase 1: Data Preparation (Python)
•	Cleaned and pre-processed the raw supply chain dataset.
•	Feature Engineering: Created metrics like Total_Logistics_Cost, Stock_Utilization, Inventory_Turnover_Ratio, and Net_Profit.
•	Handled missing values and ensured data consistency for SQL integration.

## Phase 2: Strategic Analysis (SQL)
We performed structured analysis in PostgreSQL to answer key business questions:

1. Profit & Operating Cost Analysis → Identified cities with negative profit (Loss) and
checked if high logistics costs are affecting their overall cost efficiency ratio.

2. Impact on Customers Rating due to Delivery Delay (Slow deliveries =
Unhappy customers) → Evaluated the impact of low 'Delivery Efficiency' (more than
6 days) on Customer Ratings.

3. Warehouse Space & Utilization by Product Category → Analyzed warehouse
capacity utilization by product category to identify underutilized storage space.

4. Product-wise Sales Performance → Analyzed product-wise sales performance to
identify top and low-performing categories.

5. Demand vs Stock Comparison → Compared current stock against demand forecast
to identify shortages or surpluses.

## Phase 3: Dashboard (Power BI)
Finally, we built an interactive dashboard in Power BI to present insights visually.

<img width="448" height="275" alt="image" src="https://github.com/user-attachments/assets/536a10c7-8cd9-4362-bf66-16ab12730842" />

## Business Recommendations
➢ Cut Costs → Try to spend less on transport, storage, and daily operations so profit
goes up.
➢ Deliver Faster → Reduce waiting time by speeding up order handling and shipping.
Customers will be happier.
➢ Use Warehouse Space Better → Don’t keep warehouses too empty or too full.
Balance stock so space is used wisely.
➢ Sell Stock Quickly → Move products faster with offers, bundles, or promotions. This
avoids goods sitting too long.


