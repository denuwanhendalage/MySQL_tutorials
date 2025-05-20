-- find products that are more expensive than lettuce (id=3)
USE sql_store;
SELECT *
FROM products
WHERE unit_price >(
        SELECT unit_price
        FROM products
        WHERE product_id = 3
    ) -- example 2
    -- in sql_hr database
    -- find employees whose earn more than average
    USE sql_hr;
SELECT *
FROM employees
WHERE salary >(
        SELECT AVG(salary)
        FROM employees
    ) -- subquery with IN operator
    -- find the products that have never been ordered
    USE sql_store;
SELECT *
FROM products
WHERE product_id NOT IN(
        SELECT DISTINCT product_id
        FROM order_items
    )