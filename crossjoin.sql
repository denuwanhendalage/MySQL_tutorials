SELECT c.first_name AS customer,
    p.name AS product
FROM customers c,
    products p
ORDER BY c.first_name
SELECT c.first_name AS customer,
    p.name AS product
FROM customers c
    CROSS JOIN products p
ORDER BY c.first_name