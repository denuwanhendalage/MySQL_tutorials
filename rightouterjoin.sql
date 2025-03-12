FROM customers c
    RIGHT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id