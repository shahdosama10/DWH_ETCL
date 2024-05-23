-- Total number of orders shipped by each shipper
SELECT 
    s.CompanyName,
    SUM(fos.NumberOfOrders) AS TotalOrders
FROM 
    DWH.FactOrdersShipped fos
JOIN 
    DWH.Shippers s ON fos.Shipper_key = s.shipper_key
GROUP BY 
    s.CompanyName;


--Shippers who have shipped more than a certain number of orders
SELECT 
    s.CompanyName,
    SUM(fos.NumberOfOrders) AS TotalOrders
FROM 
    DWH.FactOrdersShipped fos
JOIN 
    DWH.Shippers s ON fos.Shipper_key = s.shipper_key
GROUP BY 
    s.CompanyName
HAVING 
    SUM(fos.NumberOfOrders) > 40;

--  Latest shipment Date by each shipper
SELECT 
    s.CompanyName,
    CONVERT(date, 
        CAST(MAX(fos.TimeKey) AS CHAR(8)), 112) AS LastShipmentDate
FROM 
    DWH.FactOrdersShipped fos
JOIN 
    DWH.Shippers s ON fos.Shipper_key = s.shipper_key
GROUP BY 
    s.CompanyName;


--  Orders shipped in the last 7 days
DECLARE @CurrentDate INT = CAST(CONVERT(varchar, GETDATE(), 112) AS INT);
DECLARE @SevenDaysAgo INT = CAST(CONVERT(varchar, DATEADD(day, -7, GETDATE()), 112) AS INT);

SELECT 
    fos.FactOrdersShipped,
    fos.Shipper_key,
    fos.TimeKey,
    fos.NumberOfOrders,
    fos.create_timestamp,
    s.CompanyName
FROM 
    DWH.FactOrdersShipped fos
JOIN 
    DWH.Shippers s ON fos.Shipper_key = s.shipper_key
WHERE 
    fos.TimeKey >= @SevenDaysAgo;

-- Get Shippers Who Have Not Shipped Any Orders
SELECT 
    s.CompanyName
FROM 
    DWH.Shippers s
LEFT JOIN 
    DWH.FactOrdersShipped fos ON s.shipper_key = fos.Shipper_key
WHERE 
    fos.Shipper_key IS NULL;


--Get Orders Shipped by a Specific Shipper
SELECT 
    fos.FactOrdersShipped,
    fos.NumberOfOrders,
    fos.TimeKey
FROM 
    DWH.FactOrdersShipped fos
JOIN 
    DWH.Shippers s ON fos.Shipper_key = s.shipper_key
WHERE 
    s.CompanyName = 'Speedy Express';