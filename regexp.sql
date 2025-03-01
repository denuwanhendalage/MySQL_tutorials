SELECT *
FROM customers
WHERE last_name REGEXP 'field' --REGEXP 'field' this is equal to LIKE '%field%'
    --'^field' it means the beginning of the string
    --'field$' it means the ending of the string
    --'field|rose|romendy' means logical operator between them 
    --'[ark]e' means give the strings which include 'ae' or 're' or 'ke'
    --'[a-d]e' give strings include 'ae' or 'be' or 'ce' or 'de'