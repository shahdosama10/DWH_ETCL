-- Count the number of employees worked by each region
SELECT 
    r.RegionDescription,
    SUM(f.NumberOfEmployees) AS TotalEmployeesWorked
FROM 
    DWH.FactEmployeesWorked f
JOIN 
    DWH.Region r ON f.Region_key = r.region_key
GROUP BY 
    r.RegionDescription;


--Number of employees worked in each region in period of time 
SELECT 
    r.RegionDescription,
    SUM(f.NumberOfEmployees) AS TotalEmployeesWorked
FROM 
    DWH.FactEmployeesWorked f
JOIN 
    DWH.Region r ON f.Region_key = r.region_key
WHERE 
    CONVERT(datetime, LEFT(CONVERT(varchar, f.TimeKey), 8)) BETWEEN '2010-01-01' AND '2015-05-18'
GROUP BY 
    r.RegionDescription;



-- Find regions with no employees worked 
SELECT 
    r.RegionDescription
FROM 
    DWH.Region r
LEFT JOIN 
    DWH.FactEmployeesWorked f ON r.region_key = f.Region_key
WHERE 
    f.Region_key IS NULL;

--Total number of employees worked per year
SELECT 
    YEAR(CONVERT(datetime, CONVERT(varchar, f.TimeKey))) AS Year,
    SUM(f.NumberOfEmployees) AS TotalEmployeesWorked
FROM 
    DWH.FactEmployeesWorked f
GROUP BY 
    YEAR(CONVERT(datetime, CONVERT(varchar, f.TimeKey)));


-- Query to Get Latest Record for Each Region
SELECT 
    R.RegionDescription,
    MAX(FEW.create_timestamp) AS LatestTimestamp,
    FEW.NumberOfEmployees
FROM 
    DWH.FactEmployeesWorked FEW
JOIN 
    DWH.Region R ON FEW.Region_key = R.region_key
GROUP BY 
    R.RegionDescription, FEW.NumberOfEmployees;
