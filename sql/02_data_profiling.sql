USE RetailSalesDB;
GO

-- Total Records
SELECT COUNT(*) AS TotalRows
FROM SuperstoreRaw;

-- Missing Profit Values
SELECT COUNT(*) AS NullProfit
FROM SuperstoreRaw
WHERE Profit IS NULL;

-- Date Range
SELECT
MIN(Order_Date) AS StartDate,
MAX(Order_Date) AS EndDate
FROM SuperstoreRaw;

-- Duplicate Order IDs
SELECT
Order_ID,
COUNT(*) AS TotalOrders
FROM SuperstoreRaw
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Product IDs mapped to multiple Product Names
SELECT
Product_ID,
COUNT(DISTINCT Product_Name) AS ProductNames
FROM SuperstoreRaw
GROUP BY Product_ID
HAVING COUNT(DISTINCT Product_Name) > 1;