

CREATE SCHEMA STG


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE STG.Customers (
   CustomerID   INT   NOT NULL,
   CompanyName  VARCHAR(40)  NOT NULL,
   ContactName  VARCHAR(30),
   ContactTitle VARCHAR(30),
   Address      VARCHAR(60),
   City         VARCHAR(15),
   Phone        VARCHAR(24),
   src_update_date  datetime,
   create_timestamp	datetime,
   PRIMARY KEY (CustomerID),

);

select * from STG.Customers

Drop table STG.Customers

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



CREATE TABLE STG.Employees (
   EmployeeID    INT  NOT NULL identity,
   LastName        VARCHAR(30)         NOT NULL,
   FirstName       VARCHAR(30)         NOT NULL,
   Title           VARCHAR(50),  -- e.g., 'Sales Coordinator'
   HireDate        DATE,
   Address         VARCHAR(60),
   City            VARCHAR(15),
   HomePhone       VARCHAR(24),
   Salary          INT,
   src_update_date  datetime,
   create_timestamp	datetime,
   PRIMARY KEY (EmployeeID),
);

select * from STG.Employees

drop table STG.Employees

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



CREATE TABLE STG.Region (
   RegionID   INT  NOT NULL identity,       
   RegionDescription  VARCHAR(50) NOT NULL, --e.g.,'Eastern','Western','Northern','Southern' 
   src_update_date  datetime,
   create_timestamp	datetime,
   PRIMARY KEY (RegionID)
);

select * from STG.Region

drop table STG.Region


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE STG.Products (
   ProductID       INT       NOT NULL identity ,
   ProductName     VARCHAR(40)             NOT NULL,
   QuantityPerUnit VARCHAR(20),            -- e.g., '10 boxes x 20 bags'
   UnitPrice       float  DEFAULT 0,
   UnitsInStock    INT                DEFAULT 0,  -- Negative??
   UnitsOnOrder    INT       DEFAULT 0,
   src_update_date  datetime,
   create_timestamp	datetime,
   PRIMARY KEY (ProductID),
);


select * from STG.Products


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE STG.Shippers (
   ShipperID   INT  NOT NULL identity,
   CompanyName VARCHAR(40)       NOT NULL,
   Phone       VARCHAR(24),
   src_update_date  datetime,
   create_timestamp	datetime,
   PRIMARY KEY (ShipperID)
);

select * from STG.Shippers


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



CREATE TABLE STG.Conf_Table
(
  table_name		 varchar(30),
  last_extract_date	 datetime
);

INSERT INTO STG.Conf_Table VALUES
	('Customers', '1950-01-01'),
	('Employees', '1950-01-01'),
	('Shippers', '1950-01-01'),
	('Products', '1950-01-01'),
	('Region', '1950-01-01'),
	('Orders', '1950-01-01'), -- product sold fact
	('Revenue', '1950-01-01') , -- emp revenue fact 
	('ShipperFact' , '1950-01-01'), -- number of orders fact
	('EmpFact' , '1950-01-01'); -- number of emp fact





drop table STG.Conf_Table

select * from STG.Conf_Table

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||




CREATE TABLE STG.FactProductSales (
	OrderId INT,
    ProductKey INT,
    CustomerKey INT,
    OrderDate Date,
    ProductsSold INT,
    src_update_date  datetime,
    create_timestamp	datetime,
);

select * from STG.FactProductSales


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||




CREATE TABLE STG.FactTotalRevenue (
	F_OrderID Int not null,
	F_OrderDate Date,
    F_EmployeeId INT ,
    F_TotalRevenuePerOrder FLOAT NOT NULL,
	src_update_date  datetime,
	createTS  datetime,
);


select * from STG.FactTotalRevenue


drop table STG.FactTotalRevenue


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE STG.FactEmployeesWorked (
	
	region_key INT NOT NULL,
    NumberOfEmployees INT NOT NULL,
	HireDate Date,
    src_update_date DATETIME,
    create_timestamp DATETIME,

);


select * from STG.FactEmployeesWorked order by HireDate



drop table STG.FactEmployeesWorked


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



CREATE TABLE STG.FactOrdersShipped (
    Shipper_key INT,
    ShippedDate Date,
    NumberOfOrders INT,
	src_update_date  datetime,
	create_timestamp datetime DEFAULT GETDATE()
);


drop table STG.FactOrdersShipped


select * from STG.FactOrdersShipped




--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
