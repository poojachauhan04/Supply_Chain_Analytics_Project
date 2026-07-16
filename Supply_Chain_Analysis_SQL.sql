--Create a database
CREATE DATABASE Supply_Chain_Data

-- Create a new table with all columns as Supply_Chain
CREATE TABLE Supply_Chain (
    Warehouse_ID VARCHAR(20),
    Location VARCHAR(50),
    Current_Stock INT,
    Demand_Forecast INT,
    Lead_Time_Days INT,
    Shipping_Time_Days INT,
    Stockout_Risk INT,
    Operational_Cost DECIMAL(12,2),
    Supplier_ID VARCHAR(20),
    Product_Category VARCHAR(50),
    Monthly_Sales INT,
    Order_Processing_Time DECIMAL(10,2),
    Return_Rate DECIMAL(10,2),
    Customer_Rating DECIMAL(10,2),
    Warehouse_Capacity INT,
    Storage_Cost DECIMAL(12,2),
    Transportation_Cost DECIMAL(12,2),
    Backorder_Quantity INT,
    Damaged_Goods INT,
    Employee_Count INT,
    Total_Logistics_Cost DECIMAL(12,2),
    Net_Profit DECIMAL(12,2),
    Operating_Cost_Ratio DECIMAL(10,4),
    Delivery_Efficiency DECIMAL(10,2),
    Stock_Utilization DECIMAL(10,4),
    Inventory_Turnover_Ratio DECIMAL(10,4),
    Demand_Gap INT,
    Risk_Score DECIMAL(10,2)
)

--Retrieve the data from Supply_Chain table
SELECT * FROM Supply_Chain

--Profit & Operating Cost Analysis
-- Identifying cities with negative profit (Loss) and checking if high logistics costs are affecting their overall cost efficiency ratio.
SELECT Location, 
       ROUND(AVG(Net_profit), 2) AS Avg_Net_Profit, 
       ROUND(SUM(Total_Logistics_Cost), 2) AS Total_Cost,
       ROUND(AVG(Operating_Cost_Ratio), 2) AS Avg_Cost_Ratio
FROM Supply_Chain
GROUP BY Location
ORDER BY Avg_Net_Profit DESC

--Impact on Customers Rating due to Delivery Delay (Slow deliveries → Unhappy customers)
-- Evaluating the impact of low 'Delivery Efficiency' (more than 6 days) on Customer Ratings.
SELECT Location,
       ROUND(AVG(Delivery_Efficiency),2) AS Avg_Wait_Time,
	   ROUND(AVG(Customer_Rating),2) AS Avg_Customer_Rating
FROM Supply_Chain
GROUP BY Location
HAVING AVG(Delivery_Efficiency)>6
ORDER BY Avg_Customer_Rating ASC

--Warehouse Space & Utilization by Product Category
--Analyzing warehouse capacity utilization by product category to identify underutilized storage space.
SELECT Product_Category,
	   ROUND(AVG(Stock_Utilization),2) AS Avg_Stock_Utilization
FROM Supply_Chain
GROUP BY Product_Category
ORDER BY Avg_Stock_Utilization DESC
	   
--Product-wise Sales Performance
-- Analyzing product-wise sales performance to identify top and low-performing categories.
SELECT Product_Category,
       SUM(Monthly_Sales) AS Total_Monthly_Sales,
	   ROUND(AVG(Monthly_Sales),2) AS Avg_Monthly_Sales
FROM Supply_Chain
GROUP BY Product_Category
ORDER BY Total_Monthly_Sales DESC

--Demand vs Stock Comparison
--Comparing current stock against demand forecast to identify shortages or surpluses
SELECT Product_Category,
       SUM(Current_Stock) AS Total_Stock,
	   SUM(Demand_Forecast)AS Total_Demand,
	   SUM(Demand_Gap) AS Total_Demand_Gap
FROM Supply_Chain
GROUP BY Product_Category
ORDER BY Total_Demand_Gap DESC

--Top Delayed Warehouses
-- Identifying warehouses with the lowest Delivery Efficiency (Shipping + Processing).
SELECT Warehouse_Id,
       Location,
	   Delivery_Efficiency,
	   Customer_Rating
FROM Supply_Chain
WHERE Delivery_Efficiency>=6
ORDER BY Delivery_Efficiency DESC

--Top 10 Warehouses by Order Processing Time
-- Identifying top 10 warehouses with the longest order processing times for performance review.
SELECT Warehouse_Id,
       Order_Processing_Time
FROM Supply_Chain
ORDER BY Order_Processing_Time DESC
LIMIT 10

--Stockout Risk by Location
--Summarizing average, maximum, and minimum stockout risk across cities.
SELECT Location,
       AVG(Stockout_Risk) AS Avg_Stockout_Risk,
	   MAX(Stockout_Risk) AS Max_Stockout_Risk,
	   MIN(Stockout_Risk) AS Min_Stockout_Risk,
	   COUNT(Warehouse_Id) AS Warehouse_Count
FROM Supply_Chain
GROUP BY Location
ORDER BY Avg_Stockout_Risk DESC

--Risk by Product Category
-- Summarizing average, maximum, and minimum risk scores for each product category to identify 
--which categories carry the highest operational risk.
SELECT Product_Category,
       ROUND(AVG(Risk_Score),2) AS Avg_Risk,
	   MIN(Risk_Score) AS Min_Risk,
	   MAX(Risk_Score) AS Max_Risk,
	   COUNT(Warehouse_ID) AS Total_Warehouses
FROM Supply_Chain
GROUP BY Product_Category
ORDER BY Avg_Risk DESC

--Supplier Performance
-- Evaluating 10 worst suppliers based on their overall contribution to operations.
--(This helps management identify suppliers who are profitable vs who contribute losses.)
SELECT Supplier_Id,
       COUNT(Warehouse_Id)AS Warehouse_Count,
	   ROUND(AVG(Stockout_Risk),2) AS Avg_Stockout_Risk,
	   ROUND(AVG(Delivery_Efficiency),2) AS Avg_Delivery_Effieciency,
	   ROUND(AVG(Net_Profit),2) AS Avg_Profit
FROM Supply_Chain
GROUP BY Supplier_Id
ORDER BY Avg_Profit ASC
LIMIT 10   --Worst performers
