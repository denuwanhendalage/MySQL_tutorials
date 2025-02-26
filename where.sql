SELECT *
FROM customers
WHERE birth_date < '1995-06-06' --dates are represent in MySQL '2002-11-08'
    --comparison operators are < , <=,>,>=,=,!=,<>
    --string search can use simple or capital words that couldn't affect 
    -- for example WHERE state="VA" / WHERE state ='va' we can use both of them