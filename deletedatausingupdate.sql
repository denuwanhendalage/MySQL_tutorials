USE sql_invoicing;
UPDATE invoices
SET payment_total = DEFAULT,
    payment_date = NULL
WHERE invoice_id = 1;