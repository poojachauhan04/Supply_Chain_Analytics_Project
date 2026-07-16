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

## 📊 Key Areas of Analysis

- **[Inventory & Demand](ca://s?q=Explain_inventory_and_demand_analysis)** → Compare available stock with demand forecast to spot shortages or excess.  
- **[Risk Metrics](ca://s?q=Explain_risk_metrics_in_supply_chain)** → Track risks like stockouts, product returns, and damaged goods.  
- **[Cost Analysis](ca://s?q=Explain_cost_analysis_in_supply_chain)** → Study operational, storage, and transport costs to control expenses.  
- **[Performance](ca://s?q=Explain_performance_metrics_in_supply_chain)** → Measure monthly sales and net profit to check overall business health.  
- **[Customer Satisfaction](ca://s?q=Explain_customer_satisfaction_in_supply_chain)** → Use ratings and return rates to understand customer experience.

  ## 📌 Project Objectives

- **[Clean the data](ca://s?q=Explain_data_cleaning_in_supply_chain)** → Fix errors, remove duplicates, and prepare the dataset for analysis.  
- **[Study inventory vs demand](ca://s?q=Explain_inventory_vs_demand_analysis)** → Compare stock with demand forecast to spot shortages or surpluses.  
- **[Measure risks](ca://s?q=Explain_risk_metrics_in_supply_chain)** → Track issues like stockouts, product returns, and damaged goods.  

## 📊 Dataset Summary

- **[Size](ca://s?q=Explain_dataset_size_in_supply_chain)** → 500 rows (warehouse records) and 20 columns (details about each warehouse and products).  
- **[Warehouse Details](ca://s?q=Explain_warehouse_details_in_dataset)** → Warehouse ID, Location, Employee Count.  
- **[Inventory & Demand](ca://s?q=Explain_inventory_and_demand_in_dataset)** → Current Stock, Demand Forecast, Warehouse Capacity, Backorder Quantity.  
- **[Risk Metrics](ca://s?q=Explain_risk_metrics_in_dataset)**

## 📊 Exploratory Data Analysis using Python

- **[Data Loading](ca://s?q=Explain_Data_Loading_in_Python)** → We opened the dataset in Python using the pandas library. This step makes the data ready to work with.  
- **[Initial Exploration](ca://s?q=Explain_Initial_Exploration_in_Python)** → We checked the basic structure of the dataset using `df.info()` to see number of rows, columns, and data types.  
- **[Summary Statistics](ca://s?q=Explain_Summary_Statistics_in_Python)** → We used `df.describe()` to quickly look at averages, minimums, maximums, and other statistics for the numeric columns.  

## 🛠️ Feature Engineering

- **[Total Logistics Cost](ca://s?q=Explain_Total_Logistics_Cost)** → Combined operational, storage, and transportation costs into a single column for overall expense visibility.  
- **[Net Profit](ca://s?q=Explain_Net_Profit)** → Subtracted total logistics cost from monthly sales to calculate profitability.  
- **[Operating Cost Ratio](ca://s?q=Explain_Operating_Cost_Ratio)** → Divided logistics cost by monthly sales to measure efficiency. High ratios signal inefficiency due to excessive labor, unused storage, or costly shipping routes.  
- **[Delivery Efficiency](ca://s?q=Explain_Delivery_Efficiency)** → Added shipping time, order processing time, and lead time to capture the full delivery cycle.  
- **[Stock Utilization](ca://s?q=Explain_Stock_Utilization)** → Calculated warehouse capacity usage by dividing current stock by total capacity.  
- **[Inventory Turnover Ratio](ca://s?q=Explain_Inventory_Turnover_Ratio)** → Divided monthly sales by current stock to measure speed of inventory movement.  
- **[Demand Gap](ca://s?q=Explain_Demand_Gap)** → Subtracted current stock from demand forecast to identify shortages (positive) or surpluses (negative).  
- **[Risk Score](ca://s?q=Explain_Risk_Score)** → Combined damaged goods, return rate, and stockout risk into one composite reliability score.  
- **[New Features Grouping](ca://s?q=Explain_New_Features_Grouping)** → Grouped engineered KPIs together for easier focus.  
- **[Missing Value Check](ca://s?q=Explain_Missing_Value_Check)** → Verified null values in each new metric.  
- **[Summary Statistics](ca://s?q=Explain_Summary_Statistics_for_new_features)** → Generated descriptive statistics (mean, median, min, max, quartiles) for engineered metrics.  
- **[Final Dataset Export](ca://s?q=Explain_Final_Dataset_Export)** → Saved the cleaned dataset into a CSV file for reporting and dashboard creation.  

