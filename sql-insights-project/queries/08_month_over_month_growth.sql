-- ============================================
-- QUERY 8: Month Over Month Revenue Growth
-- Business Question: Are we growing or declining compared to last month?
-- Tables: orders, orderdetails
-- Concepts: LAG(), Window Functions, GROUP BY
-- Finding: October 2003 had highest growth % — pre-holiday ramp up
-- ============================================
SELECT 
    YEAR(o.orderDate) AS year,
    MONTH(o.orderDate) AS month,
    SUM(od.quantityOrdered * od.priceEach) AS revenue,
    LAG(SUM(od.quantityOrdered * od.priceEach)) 
        OVER(ORDER BY YEAR(o.orderDate), MONTH(o.orderDate)) AS prev_month_revenue,
    ROUND(
        (SUM(od.quantityOrdered * od.priceEach) - 
        LAG(SUM(od.quantityOrdered * od.priceEach)) 
        OVER(ORDER BY YEAR(o.orderDate), MONTH(o.orderDate))) * 100.0 /
        LAG(SUM(od.quantityOrdered * od.priceEach)) 
        OVER(ORDER BY YEAR(o.orderDate), MONTH(o.orderDate))
    , 2) AS growth_pct
FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY YEAR(o.orderDate), MONTH(o.orderDate)
ORDER BY year, month;