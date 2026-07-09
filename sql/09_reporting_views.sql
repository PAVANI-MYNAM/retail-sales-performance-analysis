CREATE OR ALTER VIEW vw_ExecutiveKPIs
AS
SELECT
    SUM(Sales) AS TotalRevenue,
    SUM(Profit) AS TotalProfit,
    COUNT(DISTINCT OrderID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    ROUND(SUM(Sales) * 1.0 / COUNT(DISTINCT OrderID), 2) AS AverageOrderValue,
    ROUND(SUM(Profit) * 100.0 / SUM(Sales), 2) AS ProfitMargin
FROM FactSales;
GO

CREATE OR ALTER VIEW vw_RevenueTrend
AS
SELECT
    D.Year,
    D.Month,
    D.MonthName,
    SUM(F.Sales) AS Revenue,
    SUM(F.Profit) AS Profit
FROM FactSales F
JOIN DimDate D
ON F.DateKey = D.DateKey
GROUP BY
    D.Year,
    D.Month,
    D.MonthName;
GO

CREATE OR ALTER VIEW vw_RegionalPerformance
AS
SELECT
    G.Region,
    SUM(F.Sales) AS Revenue,
    SUM(F.Profit) AS Profit,
    COUNT(DISTINCT F.OrderID) AS Orders
FROM FactSales F
JOIN DimGeography G
ON F.GeographyKey = G.GeographyKey
GROUP BY G.Region;
GO

CREATE OR ALTER VIEW vw_CustomerPerformance
AS
SELECT
    C.Customer_Name,
    C.Segment,
    SUM(F.Sales) AS Revenue,
    SUM(F.Profit) AS Profit,
    COUNT(DISTINCT F.OrderID) AS Orders
FROM FactSales F
JOIN DimCustomer C
ON F.CustomerKey = C.CustomerKey
GROUP BY
    C.Customer_Name,
    C.Segment;
GO

CREATE OR ALTER VIEW vw_ProductPerformance
AS
SELECT
    P.Product_Name,
    P.Category,
    P.Sub_Category,
    SUM(F.Sales) AS Revenue,
    SUM(F.Profit) AS Profit,
    SUM(F.Quantity) AS QuantitySold
FROM FactSales F
JOIN DimProduct P
ON F.ProductKey = P.ProductKey
GROUP BY
    P.Product_Name,
    P.Category,
    P.Sub_Category;
GO

CREATE OR ALTER VIEW vw_ShippingAnalysis
AS
SELECT
    ShipMode,
    SUM(Sales) AS Revenue,
    SUM(Profit) AS Profit,
    COUNT(OrderID) AS Orders
FROM FactSales
GROUP BY ShipMode;
GO