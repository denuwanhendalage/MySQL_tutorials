CREATE TABLE orders_archived AS
SELECT *
FROM orders USE sql_invoicing;
CREATE TABLE invoice_archive AS
SELECT i.invoice_id,
    c.name AS client,
    i.number,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
    JOIN clients c USING (client_id)
WHERE payment_date IS NOT NULL