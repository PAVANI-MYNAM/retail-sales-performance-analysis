CREATE TABLE DimCustomer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,

    Customer_ID VARCHAR(30) NOT NULL,

    Customer_Name VARCHAR(100) NOT NULL,

    Segment VARCHAR(30) NOT NULL
);
CREATE TABLE DimProduct
(
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,

    Product_ID VARCHAR(30) NOT NULL,

    Product_Name VARCHAR(200) NOT NULL,

    Category VARCHAR(50) NOT NULL,

    Sub_Category VARCHAR(50) NOT NULL
);

CREATE TABLE DimGeography
(
    GeographyKey INT IDENTITY(1,1) PRIMARY KEY,

    Country VARCHAR(50),

    Region VARCHAR(50),

    State VARCHAR(50),

    City VARCHAR(50),

    Postal_Code VARCHAR(20)
);

CREATE TABLE DimDate
(
    DateKey INT PRIMARY KEY,

    Order_Date DATE,

    Year INT,

    Quarter INT,

    Month INT,

    MonthName VARCHAR(20),

    Day INT
);