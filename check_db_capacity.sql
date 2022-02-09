1/ Check capacity without index of all databases

SELECT 
    table_schema 'Database Name',
    SUM(data_length) 'Size in Bytes',
    ROUND(SUM(data_length) / 1024 / 1024 / 1024, 2) 'Size in GB'
FROM information_schema.tables 
GROUP BY table_schema;

2/ Check capacity with index of all databases
SELECT 
    table_schema 'Database Name',
    SUM(data_length + index_length) 'Size in Bytes',
    ROUND(SUM(data_length + index_length) / 1024 / 1024 / 1024, 2) 'Size in GB'
FROM information_schema.tables 
GROUP BY table_schema;