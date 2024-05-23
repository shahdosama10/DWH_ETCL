-- Select the total revenue for each month across all employees
SELECT 
    DD.Year,
    FR.Month,
    SUM(FR.TotalRevenue) AS TotalMonthlyRevenue
FROM 
    DWH.FactTotalRevenue FR
JOIN 
    DWH.D_Date DD ON FR.TimeKey = DD.DateKey
GROUP BY 
    DD.Year,
    FR.Month
ORDER BY 
    DD.Year,FR.Month ;