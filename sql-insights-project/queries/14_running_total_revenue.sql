-- ============================================
-- QUERY 14: Cumulative Running Total Revenue
-- Business Question: How has revenue accumulated over time month by month?
-- Tables: orders, orderdetails
-- Concepts: SUM OVER(), Subquery in FROM, Window Functions
-- Finding: Total accumulated revenue = $9,604,190.61
-- ============================================
SELECT 
    year,
    month,
    monthly_revenue,
    SUM(monthly_revenue) OVER(ORDER BY year, month) AS running_total
FROM (
    SELECT 
        YEAR(o.orderDate) AS year,
        MONTH(o.orderDate) AS month,
        SUM(od.quantityOrdered * od.priceEach) AS monthly_revenue
    FROM orders o
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY YEAR(o.orderDate), MONTH(o.orderDate)
) AS monthly_data
ORDER BY year, month;