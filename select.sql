SELECT last_name,
    first_name,
    points,
    (points + 10) * 100 AS 'discount factor' -- AS 'discount factor' that is use for rename column instead of (point+10)*100
FROM customers