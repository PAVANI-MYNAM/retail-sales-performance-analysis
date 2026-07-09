CREATE TABLE FactSales
(
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,

    OrderID VARCHAR(30) NOT NULL,

    DateKey INT NOT NULL,

    CustomerKey INT NOT NULL,

    ProductKey INT NOT NULL,

    GeographyKey INT NOT NULL,

    ShipMode VARCHAR(30) NOT NULL,

    Sales DECIMAL(18,2) NOT NULL,

    Quantity INT NOT NULL,

    Discount DECIMAL(5,2) NOT NULL,

    Profit DECIMAL(18,2) NOT NULL,

    FOREIGN KEY (DateKey)
        REFERENCES DimDate(DateKey),

    FOREIGN KEY (CustomerKey)
        REFERENCES DimCustomer(CustomerKey),

    FOREIGN KEY (ProductKey)
        REFERENCES DimProduct(ProductKey),

    FOREIGN KEY (GeographyKey)
        REFERENCES DimGeography(GeographyKey)
);