# Data Warehouse Project

This project involves designing and implementing a data warehouse to extract key performance indicators (KPIs) from an OLTP database.

The project includes designing a star schema, performing ETL processes using SSIS, and building an interactive dashboard.

## Project Features

1. **Use the OLTP Database**:
   - Study and utilize the provided OLTP database schema.
   - ![Star Schema](https://github.com/shahdosama10/DWH_ETCL/assets/102562587/e92d57ab-f386-4918-8e4d-6953198e59f1)



2. **Define KPIs**:
   - Extract the following KPIs from the source system:

         ### KPIs

         1. **Products Sold for Product by Customer in Time Period**:
             - Dimensions: Product, Customer, Time (day)
             - Measure: Product sold (additive)

         2. **Total Sales Revenue Generated by Each Employee**:
             - Dimensions: Time (month), Employee
             - Measure: Total Revenue (sum of (unitPrice - (unitPrice * Discount)) * Quantity for each order) (additive)

         3. **Total Number of Orders Shipped by Each Shipper**:
             - Dimensions: Time (day), Shipper
             - Measure: Number of orders (additive)
          
         4. **Number of Employees Worked in Each Region in Period of Time**:
             - Dimensions: Time (year), Region
             - Measure: Number of employees

3. **Design Star Schema**:
   - Use 6 dimensions and 4 fact tables as shown in the star schema photo:
     - Dimensions: Time, Customer, Employee, Shipper, Region, Product
     - Fact tables: One for each KPI
     - ![Star Schema](https://github.com/shahdosama10/DWH_ETCL/assets/102562587/6679bb2f-5653-4783-b97a-f84550f854a0)


4. **ETL Process with SSIS**:
   - Extract data from the source system to the staging area (STG).
   - Transform and load data from STG to the data warehouse (DWH) with necessary transformations.

5. **Execute Analytical Queries**:
   - Perform analytical queries on the fact tables to derive insights.
   - see Files in directory `Project/analytical Query`

6. **Deploy and Schedule Packages**:
   - Deploy and schedule ETL packages in SSIS.

7. **Build Interactive Dashboard**:
   - Create an interactive dashboard for the DWH using  Microsoft Power BI.
   - ![Dash Board](https://github.com/shahdosama10/DWH_ETCL/assets/102562587/e0bd64ea-9672-4dbd-8619-f92626b9335f)


## Contributors

We would like to thank the following contributors to this project:

- [**Shahd Osama**](https://github.com/shahdosama10).
- [**Shahd Mostafa**](https://github.com/ShahdMostafa30).
- [**Maryam Osama**](https://github.com/maryamosama33).
- [**Ahmed Saad**](https://github.com/ahmedsaad123456).
- [**Seif Ibrahim**](https://github.com/Seif-Ibrahim1).

---

Feel free to contribute to this project by opening issues or submitting pull requests.
