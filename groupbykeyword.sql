USE sql_invoicing;
SELECT client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY (client_id)
ORDER BY total_sales DESC USE sql_invoicing;
SELECT client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-07-01'
GROUP BY (client_id)
ORDER BY total_sales DESC