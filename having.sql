USE sql_invoicing;
SELECT client_id,
    SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 -- this is second example
    USE sql_store;
SELECT c.customer_id,
    c.first_name,
    c.last_name,
    --     oi.quantity*oi.unit_price AS price,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
    JOIN orders o USING (customer_id)
    JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY c.customer_id
HAVING total_sales > 100