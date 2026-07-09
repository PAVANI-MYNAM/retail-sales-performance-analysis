INSERT INTO FactSales
(
    OrderID,
    DateKey,
    CustomerKey,
    ProductKey,
    GeographyKey,
    ShipMode,
    Sales,
    Quantity,
    Discount,
    Profit
)

SELECT

    SR.Order_ID,

    DD.DateKey,

    DC.CustomerKey,

    DP.ProductKey,

    DG.GeographyKey,

    SR.Ship_Mode,

    SR.Sales,

    SR.Quantity,

    SR.Discount,

    SR.Profit

FROM SuperstoreRaw SR

INNER JOIN DimCustomer DC
ON SR.Customer_ID = DC.Customer_ID

INNER JOIN DimProduct DP
ON SR.Product_ID = DP.Product_ID
AND SR.Product_Name = DP.Product_Name

INNER JOIN DimGeography DG
ON SR.Country = DG.Country
AND SR.Region = DG.Region
AND SR.State = DG.State
AND SR.City = DG.City
AND CAST(SR.Postal_Code AS VARCHAR(20)) = DG.Postal_Code

INNER JOIN DimDate DD
ON SR.Order_Date = DD.Order_Date;

