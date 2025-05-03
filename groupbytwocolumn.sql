USE sql_invoicing;
SELECT c.state,
	c.city,
	SUM(i.invoice_total) AS total_sales
FROM invoices i
	JOIN clients c USING (client_id)
GROUP BY state,
	city USE sql_invoicing;
-- this is second example 
SELECT p.date,
	pm.name AS payment_method,
	SUM(p.amount) AS total_payment
FROM payments p
	JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY p.date,
	payment_method
ORDER BY p.date