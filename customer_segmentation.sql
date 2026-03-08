-- Project: Customer Segmentation Project
-- Author: Shanu Benjamin
-- Description: SQL analysis of customers by region or behavior
-- Skills Demonstrated:
-- GROUP BY
-- ORDER BY
-- Aggregation functions (COUNT)

-- 1. Create Table
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50)
);

-- 2. Insert Sample Data
INSERT INTO Sales VALUES
(1, 'Alice', 'Germany', 'Berlin'),
(2, 'Bob', 'Germany','Munich'),
(3, 'Ravi', 'India', 'Delhi');

--3. Customers per country
SELECT Country, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
ORDER BY TotalCustomers DESC;

--4. Customers per city
SELECT City, COUNT(*) AS Customers
FROM Customers
GROUP BY City;
