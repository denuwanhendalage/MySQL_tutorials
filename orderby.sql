SELECT *
FROM customers
ORDER BY state DESC,
    first_name DESC --table is already sorted in primary key
    --if we want to sort other parameter we use ORDER BY keyword
    --DESC keyword is used to sort to records descending order
    --state, first_name sorting is done by using state, then get same state we are sorted using first_name