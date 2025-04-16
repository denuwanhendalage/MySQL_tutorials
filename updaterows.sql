USE sql_invoicing;
UPDATE invoices
SET payment_total = invoice_total / 2,
    payment_date = due_date
WHERE client_id = 3 USE sql_invoicing;
UPDATE invoices
SET payment_total = invoice_total / 2,
    payment_date = due_date
WHERE client_id IN (3, 4)