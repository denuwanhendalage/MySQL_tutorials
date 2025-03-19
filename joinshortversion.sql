USE sql_invoicing;
SELECT p.date,
    p.amount,
    c.name AS client,
    pm.name AS payment_method
FROM payments p
    JOIN clients c USING (client_id)
    JOIN payment_methods pm ON p.payment_method = pm.payment_method_id