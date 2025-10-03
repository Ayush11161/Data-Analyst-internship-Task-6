# Task 6: Sales Trend Analysis Using Aggregations

## Overview

This project is part of the Elevate Labs Data Analyst Internship.  
The objective of this task is to analyze **monthly sales trends** by calculating:

- **Total Revenue** (sum of order amounts)  
- **Order Volume** (count of distinct orders)  

The dataset used is `online_sales.orders` with the following fields:

| Field        | Description             |
|--------------|------------------------|
| order_date   | Date of order           |
| amount       | Order amount (revenue)  |
| product_id   | Product identifier      |
| order_id     | Unique order identifier |

---

## Tools Used

- SQLite 
- GitHub for submission  

---

## SQL Queries

### 1️⃣ Monthly Revenue & Order Volume

```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales.orders
GROUP BY year, month
ORDER BY year, month;

