# 🛒 E-Commerce Sales Insights — SQL Analysis Project

> Analyzing a real e-commerce database to extract actionable business insights using advanced SQL techniques.

---

## 📌 Project Overview

This project simulates a real-world Data Analyst role where I was given access to an e-commerce database and tasked with answering 15 critical business questions using SQL.

The analysis covers sales performance, customer behavior, product trends, office efficiency, and revenue growth patterns — all derived purely through SQL queries on a relational database.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| MySQL 8.0 | Database & Query Execution |
| MySQL Workbench | SQL IDE |
| ClassicModels Database | Sample E-Commerce Dataset |

---

## 🗄️ Database Schema

The **ClassicModels** database contains 8 interconnected tables:

```
offices ──► employees ──► customers ──► orders ──► orderdetails
                                    │                    │
                              payments             products
                                                       │
                                               productlines
```

| Table | Description |
|-------|-------------|
| `customers` | Customer details and assigned sales rep |
| `orders` | Order transactions with dates and status |
| `orderdetails` | Line items per order (product, quantity, price) |
| `products` | Product catalog with stock levels |
| `productlines` | Product categories |
| `employees` | Sales representatives and staff |
| `offices` | Company office locations worldwide |
| `payments` | Customer payment records |

---

## 📊 Business Questions Answered

### 💰 Revenue Analysis
| # | Business Question | SQL Concepts |
|---|------------------|--------------|
| 1 | Total revenue across different years | JOIN, GROUP BY, DATE functions |
| 4 | Monthly revenue trends across all years | MONTH(), YEAR(), GROUP BY |
| 6 | Each order's revenue and % contribution to total | Window Function, OVER() |
| 8 | Month-over-month revenue growth | LAG(), Window Functions |
| 14 | Cumulative running total of revenue over time | SUM() OVER(), Subquery |

### 👥 Sales Performance
| # | Business Question | SQL Concepts |
|---|------------------|--------------|
| 2 | Which sales rep brought in the most customers? | JOIN, COUNT, GROUP BY |
| 3 | Which sales rep generated the most revenue? | 4-table JOIN, SUM, GROUP BY |
| 11 | Which office generates the highest revenue? | 5-table JOIN, GROUP BY |

### 🛍️ Product Intelligence
| # | Business Question | SQL Concepts |
|---|------------------|--------------|
| 5 | Top 5 revenue-generating products | JOIN, SUM, ORDER BY, LIMIT |
| 7 | Product revenue rankings | RANK(), Window Functions |
| 10 | Revenue by product line (total + per product) | 3-table JOIN, COUNT DISTINCT |
| 13 | Products with below-average stock levels | Subquery, WHERE |

### 🤝 Customer Behavior
| # | Business Question | SQL Concepts |
|---|------------------|--------------|
| 9 | Top 10 customers by total payment amount | JOIN, SUM, GROUP BY |
| 12 | Most loyal customers (5+ orders) | HAVING, COUNT |
| 15 | Complete customer summary with revenue rank | Multi-table JOIN, RANK(), MIN, MAX |

---

## 💡 Key Business Findings

### 📈 Seasonality Pattern
> **November consistently shows the highest revenue every year.**
> The business should increase inventory, staffing, and marketing spend before October to capitalize on this pattern.

### 🏆 Top Performers
> - **Best Sales Rep by Revenue:** Gerard Hernandez
> - **Best Sales Rep by Customer Count:** Pamela Castillo
> - **Key Insight:** Gerard generates more revenue with fewer customers — indicating higher-value deals. His strategy should be studied and replicated.

### 🚗 Product Intelligence
> - **Classic Cars** dominate revenue across all product lines
> - **1992 Ferrari 360 Spider Red** is the top revenue-generating product — driven by high sales volume, not just high price
> - **Trains** underperform even on a per-product basis — discontinuation worth evaluating

### 🏢 Office Performance
> - **Paris office** leads in total sales revenue
> - **USA** dominates as a country overall

### 👑 Customer Loyalty
> - **Euro+ Shopping Channel** is the highest-value customer by both payment amount ($715K+) and order frequency
> - Only 2 customers qualify as "Gold tier" (5+ orders) — loyalty program opportunity

### 📊 Revenue Milestone
> **Total Revenue across all years: $9,604,190.61**
> Validated independently via two different query approaches — confirming data integrity.

---

## 🧠 SQL Concepts Demonstrated

```
✅ Basic Queries          — SELECT, WHERE, ORDER BY, LIMIT
✅ Joins                  — 2-table to 5-table JOINs
✅ Aggregations           — SUM, COUNT, AVG, MIN, MAX
✅ Grouping               — GROUP BY, HAVING
✅ Date Functions         — YEAR(), MONTH()
✅ Subqueries             — WHERE and FROM subqueries
✅ Window Functions       — RANK(), LAG(), SUM() OVER()
✅ Data Normalization     — COUNT(DISTINCT), revenue per product
✅ Business Metrics       — MoM growth, running totals, % contribution
```

---

## 📁 Project Structure

```
sql-ecommerce-insights/
├── README.md
├── queries/
│   ├── 01_yearly_revenue.sql
│   ├── 02_sales_rep_customers.sql
│   ├── 03_sales_rep_revenue.sql
│   ├── 04_monthly_trends.sql
│   ├── 05_top_products.sql
│   ├── 06_order_contribution_pct.sql
│   ├── 07_product_rankings.sql
│   ├── 08_month_over_month_growth.sql
│   ├── 09_top_customers_payment.sql
│   ├── 10_product_line_revenue.sql
│   ├── 11_office_performance.sql
│   ├── 12_customer_loyalty.sql
│   ├── 13_inventory_analysis.sql
│   ├── 14_running_total_revenue.sql
│   └── 15_customer_summary.sql
├── insights/
│   └── key_findings.md
```

---

## 🚀 How To Run This Project

**Step 1 — Install MySQL**
Download MySQL Community Server from [mysql.com](https://www.mysql.com)

**Step 2 — Load the Database**
```sql
SOURCE /path/to/mysqlsampledatabase.sql;
USE classicmodels;
```

**Step 3 — Run Any Query**
Open any `.sql` file from the `queries/` folder and execute in MySQL Workbench.

---

## 👤 About Me

**Namrata Singh**
Aspiring Data Scientist

[![GitHub](https://img.shields.io/badge/GitHub-namratacodes-black?logo=github)](https://github.com/namratacodes)

---

*This project was built as part of my Data Science learning journey — focused on real business problem-solving using SQL.*
