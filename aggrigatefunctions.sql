USE sql_invoicing;
SELECT MAX(invoice_total) AS highest,
    -- MAX(payment_date) AS highest we can get leatest date 
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total) AS total,
    COUNT(*) AS total_record
FROM invoices
WHERE invoice_date > '2019-07-01' -- max,min values given in this condition