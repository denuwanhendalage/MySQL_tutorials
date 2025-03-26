SELECT order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id,
    order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01' -- points<2000  'bronze'
    -- points >=2000 AND points<3000   'silver'
    -- points >3000 'gold'
SELECT customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points >= 2000
    AND points < 3000
UNION
SELECT customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name