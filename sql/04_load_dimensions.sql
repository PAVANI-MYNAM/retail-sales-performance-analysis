INSERT INTO DimCustomer
(
    Customer_ID,
    Customer_Name,
    Segment
)
SELECT DISTINCT
    Customer_ID,
    Customer_Name,
    Segment
FROM SuperstoreRaw;

INSERT INTO DimProduct
(
    Product_ID,
    Product_Name,
    Category,
    Sub_Category
)
SELECT DISTINCT
    Product_ID,
    Product_Name,
    Category,
    Sub_Category
FROM SuperstoreRaw;

INSERT INTO DimGeography
(
    Country,
    Region,
    State,
    City,
    Postal_Code
)
SELECT DISTINCT
    Country,
    Region,
    State,
    City,
    CAST(Postal_Code AS VARCHAR(20))
FROM SuperstoreRaw;


INSERT INTO DimDate
(
    DateKey,
    Order_Date,
    Year,
    Quarter,
    Month,
    MonthName,
    Day
)
SELECT DISTINCT
    YEAR(Order_Date) * 10000
        + MONTH(Order_Date) * 100
        + DAY(Order_Date),

    Order_Date,

    YEAR(Order_Date),

    DATEPART(QUARTER, Order_Date),

    MONTH(Order_Date),

    DATENAME(MONTH, Order_Date),

    DAY(Order_Date)

FROM SuperstoreRaw;

