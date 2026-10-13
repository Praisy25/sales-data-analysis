--Query 1 — Total sales, units, and invoices

SELECT
    ROUND(SUM(Revenue), 2) AS total_sales_value,
    SUM(Quantity) AS total_units_sold,
    COUNT(DISTINCT InvoiceNo) AS unique_invoices
FROM sales;
--Query 2 — Monthly sales trend

SELECT
    SUBSTR(InvoiceDate, 1, 7) AS sales_month,
    ROUND(SUM(Revenue), 2) AS monthly_sales
FROM sales
GROUP BY SUBSTR(InvoiceDate, 1, 7)
ORDER BY sales_month;

--Query 3 — Top 10 products by sales value

SELECT
    Description,
    ROUND(SUM(Revenue), 2) AS total_sales_value,
    SUM(Quantity) AS total_units_sold
FROM sales
WHERE Description IS NOT NULL
GROUP BY Description
ORDER BY total_sales_value DESC
LIMIT 10;

--Query 4 — Top 10 countries by sales value

SELECT
    Country,
    ROUND(SUM(Revenue), 2) AS total_sales_value
FROM sales
GROUP BY Country
ORDER BY total_sales_value DESC
LIMIT 10;

--Query 5 — Average order value

WITH invoice_totals AS (
    SELECT
        InvoiceNo,
        SUM(Revenue) AS invoice_value
    FROM sales
    GROUP BY InvoiceNo
)
SELECT
    ROUND(AVG(invoice_value), 2) AS average_order_value
FROM invoice_totals;

