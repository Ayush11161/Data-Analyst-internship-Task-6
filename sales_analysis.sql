-- This query is corrected for SQLite using the strftime() function.
SELECT
    CAST(strftime('%Y', order_date) AS INTEGER) AS sales_year,   -- Changed: Use strftime() for year
    CAST(strftime('%m', order_date) AS INTEGER) AS sales_month,  -- Changed: Use strftime() for month
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
GROUP BY
    sales_year, sales_month
ORDER BY
    sales_year, sales_month;