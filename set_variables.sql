SHOW VARIABLES;

SHOW VARIABLES LIKE 'tmp_table_size';
SHOW VARIABLES LIKE 'max_heap_table_size';

SELECT @@max_heap_table_size;
SELECT @@tmp_table_size;
SELECT @@innodb_data_file_path; -- ibdata1:12M:autoextend

SET @@max_heap_table_size=1024 * 1024 * 512;
SET @@tmp_table_size=1024 * 1024 * 512;