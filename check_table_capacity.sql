1/ Check capacity of all tables in 1 database
SELECT 
    table_name AS 'Table', 
    data_length AS 'Size in Bytes',
    round(((data_length) / 1024 / 1024 / 1024), 2) `Size in GB` 
FROM information_schema.tables 
WHERE table_schema = "table_schema_name"


2/ Check capacity of 1 tables in 1 database
SELECT 
    table_name AS 'Table', 
    data_length AS 'Size in Bytes',
    round(((data_length) / 1024 / 1024 / 1024), 2) `Size in GB` 
FROM information_schema.tables 
WHERE table_schema = "table_schema_name"
AND table_name = "table_name";

3/ Check capacity of all tables in 1 database and order the capacity
SELECT 
    table_name AS 'Table', 
    data_length AS 'Size in Bytes',
    round(((data_length) / 1024 / 1024 / 1024), 2) `Size in GB` 
FROM information_schema.tables 
WHERE table_schema = "table_schema_name"
ORDER BY (data_length) DESC;