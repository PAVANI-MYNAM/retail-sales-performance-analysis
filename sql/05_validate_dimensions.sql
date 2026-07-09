SELECT Customer_ID, COUNT(*) AS Cnt
FROM DimCustomer
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

SELECT
    Product_ID,
    Product_Name,
    COUNT(*) AS Cnt
FROM DimProduct
GROUP BY
    Product_ID,
    Product_Name
HAVING COUNT(*) > 1;

SELECT
    Country,
    Region,
    State,
    City,
    Postal_Code,
    COUNT(*) AS Cnt
FROM DimGeography
GROUP BY
    Country,
    Region,
    State,
    City,
    Postal_Code
HAVING COUNT(*) > 1;

SELECT
    Order_Date,
    COUNT(*) AS Cnt
FROM DimDate
GROUP BY Order_Date
HAVING COUNT(*) > 1;