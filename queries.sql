-- Total Revenue Generated
SELECT ROUND(SUM(`Revenue generated`),2) AS Total_Revenue FROM supply_chain;

-- Revenue by Product Type
SELECT
    `Product type`,
    ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Product type`
ORDER BY Revenue DESC;

-- Top 5 Highest Revenue Products
SELECT
    SKU,
    `Product type`,
    ROUND(`Revenue generated`,2) AS Revenue
FROM supply_chain
ORDER BY `Revenue generated` DESC
LIMIT 5;

-- Revenue by Location
SELECT
    Location,
    ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY Location
ORDER BY Revenue DESC;

-- Best Supplier
SELECT
    `Supplier name`,
    ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Supplier name`
ORDER BY Revenue DESC;

-- Defect Rate Analysis
SELECT
    `Product type`,
    ROUND(AVG(`Defect rates`),2) AS Avg_Defect_Rate
FROM supply_chain
GROUP BY `Product type`
ORDER BY Avg_Defect_Rate DESC;

-- Transportation Mode Performance
SELECT
    `Transportation modes`,
    ROUND(SUM(`Revenue generated`),2) AS Revenue
FROM supply_chain
GROUP BY `Transportation modes`
ORDER BY Revenue DESC;

-- Inventory Risk Analysis
SELECT
    SKU,
    `Product type`,
    `Stock levels`
FROM supply_chain
ORDER BY `Stock levels` ASC
LIMIT 10;

