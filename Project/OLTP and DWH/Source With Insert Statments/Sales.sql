Create database SalesDB

create schema Sales

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

-- RUN THIS UPDATES AFTER INSERTING THE DATA

-- Customers table
UPDATE Sales.Customers
SET last_update = '2024-05-15';

-- Employees table
UPDATE Sales.Employees
SET last_update = '2024-05-15';

-- Region table
UPDATE Sales.Region
SET last_update = '2024-05-15';

-- Territories table
UPDATE Sales.Territories
SET last_update = '2024-05-15';

-- EmployeeTerritories table
UPDATE Sales.EmployeeTerritories
SET last_update = '2024-05-15';

-- Categories table
UPDATE Sales.Categories
SET last_update = '2024-05-15';

-- Suppliers table
UPDATE Sales.Suppliers
SET last_update = '2024-05-15';

-- Products table
UPDATE Sales.Products
SET last_update = '2024-05-15';

-- Shippers table
UPDATE Sales.Shippers
SET last_update = '2024-05-15';

-- Orders table
UPDATE Sales.Orders
SET last_update = '2024-05-15';

-- Order_Details table
UPDATE Sales.Order_Details
SET last_update = '2024-05-15';



--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

CREATE TABLE Sales.Customers (
   CustomerID   INT   NOT NULL,
   CompanyName  VARCHAR(40)  NOT NULL,
   ContactName  VARCHAR(30),
   ContactTitle VARCHAR(30),
   Address      VARCHAR(60),
   City         VARCHAR(15),
   Region       VARCHAR(15),
   PostalCode   VARCHAR(10),
   Country      VARCHAR(15),
   Phone        VARCHAR(24),
   Fax          VARCHAR(24),
   last_update DATETIME
   PRIMARY KEY (CustomerID),
);

select * From Sales.Customers


drop table Sales.Customers

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.Employees (
   EmployeeID    INT  NOT NULL identity,
   LastName        VARCHAR(30)         NOT NULL,
   FirstName       VARCHAR(30)         NOT NULL,
   Title           VARCHAR(50),  -- e.g., 'Sales Coordinator'
   BirthDate       DATE,         -- 'YYYY-MM-DD'
   HireDate        DATE,
   Address         VARCHAR(60),
   City            VARCHAR(15),
   PostalCode      VARCHAR(10),
   Country         VARCHAR(15),
   HomePhone       VARCHAR(24),
   Extension       VARCHAR(4),
   Notes           TEXT                NOT NULL,  
   ReportsTo       INT  NULL,  -- Manager's ID -- Allow NULL for boss                                              
   Salary          INT,
   last_update DATETIME
   PRIMARY KEY (EmployeeID),
   FOREIGN KEY (ReportsTo) REFERENCES Sales.Employees (EmployeeID)
);

select * from Sales.Employees order by HireDate


drop table Sales.Employees

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



CREATE TABLE Sales.Region (
   RegionID   INT  NOT NULL identity,       
   RegionDescription  VARCHAR(50) NOT NULL, --e.g.,'Eastern','Western','Northern','Southern' 
   last_update DATETIME
   PRIMARY KEY (RegionID)
);

select * from Sales.Region


drop table Sales.Region

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

-- e.g., ('02116', 'Boston', 1)
CREATE TABLE Sales.Territories (
   TerritoryID           VARCHAR(20)       NOT NULL,  -- ZIP code
   TerritoryDescription  VARCHAR(50)       NOT NULL,  -- Name
   RegionID              INT NOT NULL,
   last_update DATETIME
   PRIMARY KEY (TerritoryID),
   FOREIGN KEY (RegionID) REFERENCES Sales.Region (RegionID)
);

drop table Sales.Territories


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.EmployeeTerritories (
   EmployeeID  INT  NOT NULL,
   TerritoryID VARCHAR(20) NOT NULL,
   PRIMARY KEY (EmployeeID, TerritoryID),
   last_update DATETIME
   FOREIGN KEY (EmployeeID) REFERENCES Sales.Employees (EmployeeID),
   FOREIGN KEY (TerritoryID) REFERENCES Sales.Territories (TerritoryID)
);

select * from Sales.EmployeeTerritories


drop table Sales.EmployeeTerritories


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.Categories (
   CategoryID   INT  NOT NULL identity,
                  -- [0, 255], not expected to be large
   CategoryName VARCHAR(30)       NOT NULL,
                  -- e.g., 'Beverages','Condiments',etc
   Description  TEXT,       -- up to 64KB characters
   last_update DATETIME
   PRIMARY KEY  (CategoryID),
);

drop table Sales.Categories


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.Suppliers (
   SupplierID   INT  NOT NULL identity,  -- [0, 65535]    
   CompanyName  VARCHAR(40) NOT NULL,
   ContactName  VARCHAR(30),
   ContactTitle VARCHAR(30),
   Address      VARCHAR(60),
   City         VARCHAR(15),
   Region       VARCHAR(15),
   PostalCode   VARCHAR(10),
   Country      VARCHAR(15),
   Phone        VARCHAR(24),
   Fax          VARCHAR(24),
   HomePage     TEXT,          -- 64KB?? VARCHAR(255)?
   last_update DATETIME
    PRIMARY KEY (SupplierID),
);

drop table Sales.Suppliers


--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.Products (
   ProductID       INT       NOT NULL identity ,
   ProductName     VARCHAR(40)             NOT NULL,
   SupplierID      INT       NOT NULL,  -- one supplier only
   CategoryID      INT        NOT NULL,
   QuantityPerUnit VARCHAR(20),            -- e.g., '10 boxes x 20 bags'
   UnitPrice       float  DEFAULT 0,
   UnitsInStock    INT                DEFAULT 0,  -- Negative??
   UnitsOnOrder    INT       DEFAULT 0,
   ReorderLevel    INT       DEFAULT 0,
   last_update DATETIME
   PRIMARY KEY (ProductID),
   FOREIGN KEY (CategoryID) REFERENCES Sales.Categories (CategoryID),
   FOREIGN KEY (SupplierID) REFERENCES Sales.Suppliers (SupplierID)
);

select * from Sales.Products


drop table Sales.Products

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.Shippers (
   ShipperID   INT  NOT NULL identity,
   CompanyName VARCHAR(40)       NOT NULL,
   Phone       VARCHAR(24),
   last_update DATETIME
   PRIMARY KEY (ShipperID)
);


drop table Sales.Shippers

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


CREATE TABLE Sales.Orders (
   OrderID        INT  NOT NULL identity,
   CustomerID     INT,
   EmployeeID     INT  NOT NULL,
   OrderDate      DATE,
   RequiredDate   DATE,
   ShippedDate    DATE,
   ShipVia        INT,
   Freight        float  DEFAULT 0,
   ShipName       VARCHAR(40),
   ShipAddress    VARCHAR(60),
   ShipCity       VARCHAR(15),
   ShipRegion     VARCHAR(15),
   ShipPostalCode VARCHAR(10),
   ShipCountry    VARCHAR(15),
   last_update DATETIME
   PRIMARY KEY (OrderID),
   FOREIGN KEY (CustomerID) REFERENCES Sales.Customers (CustomerID),
   FOREIGN KEY (EmployeeID) REFERENCES Sales.Employees (EmployeeID),
   FOREIGN KEY (ShipVia)    REFERENCES Sales.Shippers  (ShipperID)
);

select * from Sales.Orders


drop table Sales.Orders

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


-- Many-to-many Junction table between Orders and Products
CREATE TABLE Sales.Order_Details (
   OrderID   INT           NOT NULL,
   ProductID INT      NOT NULL,
   UnitPrice float NOT NULL ,             
   Quantity  INT    NOT NULL DEFAULT 1,
   Discount  float NOT NULL DEFAULT 0, -- e.g., 0.15
   last_update DATETIME
   PRIMARY KEY (OrderID, ProductID),
   FOREIGN KEY (OrderID)   REFERENCES Sales.Orders   (OrderID),
   FOREIGN KEY (ProductID) REFERENCES Sales.Products (ProductID)
);



select * from Sales.Order_Details

drop table Sales.Order_Details

--||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||





