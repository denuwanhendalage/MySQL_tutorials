USE sql_invoicing;
SELECT c.state,
	c.city,
	SUM(i.invoice_total) AS total_sales
FROM invoices i
	JOIN clients c USING (client_id)
GROUP BY state,
	city