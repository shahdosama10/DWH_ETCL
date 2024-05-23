


-- get the number of products sold along with their product names

SELECT 
    p.ProductID,
    p.ProductName,
    SUM(f.ProductsSold) AS TotalProductsSold
FROM 
    DWH.FactProductSales f
JOIN 
    DWH.Products p ON f.ProductKey = p.product_key
GROUP BY 
    p.ProductID, p.ProductName
ORDER BY 
    TotalProductsSold DESC;




-- calculates the total number of products sold to each customer


SELECT 
    c.CustomerID,
    c.ContactName ,
    SUM(f.ProductsSold) AS TotalProductsSold
FROM 
    DWH.FactProductSales f
JOIN 
    DWH.Customers c ON f.CustomerKey = c.customer_key
GROUP BY 
    c.CustomerID, c.ContactName 
ORDER BY 
    TotalProductsSold DESC;


-- number of product sold for each month in each year


SELECT 
    d.Year,
    d.Month,
    SUM(f.ProductsSold) AS TotalProductsSold
FROM 
    DWH.FactProductSales f
JOIN 
    DWH.Products p ON f.ProductKey = p.product_key
JOIN 
    DWH.D_Date d ON f.TimeKey = d.DateKey
GROUP BY 
    d.Year,
    d.Month
ORDER BY 
    d.Year,
    d.Month,
    TotalProductsSold DESC;
