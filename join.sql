SELECT order_id,
    orders.customer_id,
    first_name,
    last_name
FROM orders
    JOIN customers ON orders.customer_id = customers.customer_id --we are joining the customers table to order table using customer_id 
    --SELECT order_id,customer_id,first_name, last_name this command line has an error
    --error is customer_id this column is in orders table and also customers table. therefore give an ambiguous error
    --we can correct that error using order.customer_id or customers,customer_id
    USE sql_store;
SELECT o.order_id,
    c.first_name,
    sh.name AS shipper_name
FROM orders o
    JOIN customers c -- ON o.customer_id=c.customer_id
    USING(customer_id)