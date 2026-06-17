-- ============================================
-- QUERY 2: Sales Rep With Most Customers
-- Business Question: Which sales employee brought in the most customers?
-- Tables: employees, customers
-- Concepts: JOIN, COUNT, GROUP BY
-- Finding: Pamela Castillo handles most customers (10)
-- ============================================
SELECT 
    e.firstName, 
    e.lastName,
    COUNT(c.customerNumber) AS total_customers   
FROM employees e                      
JOIN customers c                      
    ON e.employeeNumber = c.salesRepEmployeeNumber 
GROUP BY e.employeeNumber, e.firstName, e.lastName       
ORDER BY total_customers DESC
LIMIT 5;