-- Project: Sales Performance Analysis
-- Author: Shanu Benjamin
-- Description: SQL analysis of salesperson performance and regional sales trends

-- Skills Demonstrated:
-- GROUP BY
-- Aggregation functions (SUM, AVG)
-- Window functions (ROW_NUMBER)

-- 1. Create Table
CREATE TABLE Sales (
    SalesID INT,
    Salesperson VARCHAR(50),
    Region VARCHAR(50),
    Amount INT,
    SaleDate DATE
);

-- 2. Insert Sample Data
INSERT INTO Sales VALUES
(1, 'John', 'East', 500, '2024-01-10'),
(2, 'Mary', 'West', 700, '2024-01-12'),
(3, 'John', 'East', 300, '2024-01-15'),
(4, 'Ravi', 'North', 900, '2024-01-18'),
(5, 'Mary', 'West', 400, '2024-01-20');

-- 3. Total Sales by Salesperson
SELECT Salesperson, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Salesperson;

-- 4. Average Sales per Region
SELECT Region, AVG(Amount) AS AvgSales
FROM Sales
GROUP BY Region;

-- 5. Rank Sales for each Salesperson
SELECT Salesperson, Amount,
ROW_NUMBER() OVER (PARTITION BY Salesperson ORDER BY Amount DESC) AS Rank
FROM Sales;
