-- ============================================
-- QUERY 11: Office Performance By Revenue
-- Business Question: Which office generates the highest total sales revenue?
-- Tables: offices, employees, customers, orders, orderdetails
-- Concepts: 5-table JOIN, GROUP BY
-- Finding: Paris office leads, USA dominates as a country
-- ============================================
SELECT
    oc.officeCode,
    oc.city,         
    oc.country,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM offices oc
JOIN employees e
    ON oc.officeCode = e.officeCode
JOIN customers c 
    ON e.employeeNumber = c.salesRepEmployeeNumber
JOIN orders o 
    ON c.customerNumber = o.customerNumber       
JOIN orderdetails od 
    ON o.orderNumber = od.orderNumber
GROUP BY oc.officeCode, oc.city, oc.country
ORDER BY total_revenue DESC;