

create schema DWH


-- SCD2
CREATE TABLE DWH.Customers (
   customer_key int identity(1,1) PRIMARY KEY,
   CustomerID   INT   NOT NULL,
   CompanyName  VARCHAR(40)  NOT NULL,
   ContactName  VARCHAR(30),
   ContactTitle VARCHAR(30),        -- changed 
   Address      VARCHAR(60),		-- changed
   City         VARCHAR(15),       -- changed
   Phone        VARCHAR(24), 
   create_timestamp	datetime,
   is_last	   bit,
   update_timestamp     datetime,
);

drop table DWH.Customers


select * from DWH.Customers



--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



-- SCD2 
CREATE TABLE DWH.Employees (
   employee_key int identity(1,1) PRIMARY KEY,
   EmployeeID    INT  NOT NULL ,
   LastName        VARCHAR(30)         NOT NULL,
   FirstName       VARCHAR(30)         NOT NULL,
   Title           VARCHAR(50),  -- changed
   HireDate        DATE,
   Address         VARCHAR(60),   -- changed
   City            VARCHAR(15),    -- changed
   HomePhone       VARCHAR(24),
   Salary          INT,            -- changed
   create_timestamp	datetime,
   is_last	   bit,
   update_timestamp     datetime,
   );

   select * from DWH.Employees

   drop table DWH.Employees

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


-- SCD2
   CREATE TABLE DWH.Region (
   region_key int identity(1,1) PRIMARY KEY,
   RegionID   INT  NOT NULL ,       
   RegionDescription  VARCHAR(50) NOT NULL, -- changed 
   create_timestamp	datetime,
   is_last	   bit,
   update_timestamp     datetime,
);

select * from DWH.Region

drop table DWH.Region

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||




-- SCD2
CREATE TABLE DWH.Products (
   product_key int identity(1,1) PRIMARY KEY,
   ProductID       INT       NOT NULL,
   ProductName     VARCHAR(40)             NOT NULL,
   QuantityPerUnit VARCHAR(20),            
   UnitPrice       float  DEFAULT 0,          -- changed
   UnitsInStock    INT                DEFAULT 0,  --changed
   UnitsOnOrder    INT       DEFAULT 0,         -- changed
   create_timestamp	datetime,
   is_last	   bit,
   update_timestamp     datetime,
);

drop table DWH.Products

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


-- SCD2 
CREATE TABLE DWH.Shippers (
   shipper_key int identity(1,1) PRIMARY KEY,
   ShipperID   INT  NOT NULL ,
   CompanyName VARCHAR(40)       NOT NULL, -- changed
   Phone       VARCHAR(24),
   create_timestamp	datetime,
   is_last	   bit,
   update_timestamp     datetime,
);


select * from DWH.Shippers

drop table DWH.Shippers

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE DWH.D_Date (
   [DateKey] [int] NOT NULL primary key,
   [Date] [date] NOT NULL,
   [Day] [tinyint] NOT NULL,
   [Month] [tinyint] NOT NULL,
   [Year] [int] NOT NULL,
 );

 select * from DWH.D_Date


SET NOCOUNT ON

DECLARE @CurrentDate DATE = '2001-01-01'
DECLARE @EndDate DATE = '2030-12-31'

WHILE @CurrentDate < @EndDate
BEGIN
   INSERT INTO DWH.D_Date (
      [DateKey],
      [Date],
      [Day],
      [Month],
      [Year]
      )
   SELECT DateKey = YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate),
      DATE = @CurrentDate,
      Day = DAY(@CurrentDate),
      [Month] = MONTH(@CurrentDate),
      [Year] = YEAR(@CurrentDate)

   SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END




-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


-- completed

--products sold for product by Customer in time period 
--Product 
--Customer 
--Time (day)
--Product sold (additive )


CREATE TABLE DWH.FactProductSales (
	FactProductSalesKey INT identity(1,1) ,
    ProductKey INT,
    CustomerKey INT,
    TimeKey INT,
    ProductsSold INT,
	create_timestamp datetime,
    PRIMARY KEY (FactProductSalesKey),
    FOREIGN KEY (ProductKey) REFERENCES DWH.Products(product_key),
    FOREIGN KEY (CustomerKey) REFERENCES DWH.Customers(customer_key),
    FOREIGN KEY (TimeKey) REFERENCES DWH.D_Date(DateKey)
);


drop table DWH.FactProductSales

select * from DWH.FactProductSales



-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

-- completed
-- Total Sales Revenue Generated by Each Employee

-- time (month)
--Employee 
-- Total Revenue (sum of the total sales amount (unitPrice -(Unitprice*Discount))*Quantity for each order) (additive)




CREATE TABLE DWH.FactTotalRevenue (
	FactTotalRevenueKey INT primary key identity(1 , 1),
	Employee_Key int not null,
	TimeKey INT,
	[Month] INT NOT NULL,
    TotalRevenue FLOAT NOT NULL,
	create_timestamp datetime,
	FOREIGN KEY (Employee_Key) REFERENCES DWH.Employees(Employee_Key),
    FOREIGN KEY (TimeKey) REFERENCES DWH.D_Date(DateKey)
);

select * from DWH.FactTotalRevenue order by Employee_Key


drop table DWH.FactTotalRevenue


-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


-- completed

--Total number of orders shipped by Each shipper

--time (day)
--shipper 
--number of order(additive)

CREATE TABLE DWH.FactOrdersShipped (
	FactOrdersShipped INT primary key identity(1 , 1),
    Shipper_key INT NOT NULL,
	TimeKey INT,
    NumberOfOrders INT NOT NULL,
	create_timestamp datetime,
    FOREIGN KEY (Shipper_key) REFERENCES DWH.Shippers(shipper_key),
	FOREIGN KEY (TimeKey) REFERENCES DWH.D_Date(DateKey)
	);


	drop table DWH.FactOrdersShipped

	select * from DWH.FactOrdersShipped

-- |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

-- completed 

--Number of employees worked in each region in period of time 


--Time(year) 
--Region
--Number of employees


CREATE TABLE DWH.FactEmployeesWorked (
	FactEmployeesWorked INT primary key identity(1 , 1),
    Region_key INT NOT NULL,
    NumberOfEmployees INT NOT NULL,
	TimeKey INT,
	create_timestamp datetime,
    FOREIGN KEY (Region_key) REFERENCES DWH.Region(region_key),
	FOREIGN KEY (TimeKey) REFERENCES DWH.D_Date(DateKey)

);

drop table DWH.FactEmployeesWorked

select * from  DWH.FactEmployeesWorked


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||




