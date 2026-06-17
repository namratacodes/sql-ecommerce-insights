-- ============================================
-- QUERY 9: Top 10 Customers By Payment Amount
-- Business Question: Who are our highest paying customers?
-- Tables: customers, payments
-- Concepts: JOIN, SUM, GROUP BY, ORDER BY
-- Finding: Euro+ Shopping Channel leads at $715K+
-- ============================================
SELECT
    c.customerName,
    SUM(p.amount) AS total_payable_amount
FROM customers c
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY c.customerName
ORDER BY total_payable_amount DESC
LIMIT 10;