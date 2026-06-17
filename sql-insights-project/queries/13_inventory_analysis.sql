-- ============================================
-- QUERY 13: Inventory Below Average Stock
-- Business Question: Which products are running low on stock compared to average?
-- Tables: products
-- Concepts: Subquery, WHERE, AVG
-- Finding: Several products need urgent restocking review
-- ============================================
SELECT
    p.productName,
    p.productLine,
    p.quantityInStock
FROM products p
WHERE p.quantityInStock < (SELECT AVG(quantityInStock) FROM products)
ORDER BY p.quantityInStock;