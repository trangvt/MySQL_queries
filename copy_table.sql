1/ copy a table from one Database to another database

CREATE TABLE db2.table LIKE db1.table;
INSERT INTO db2.table SELECT * FROM db1.table;

2/ Rename table
https://dev.mysql.com/doc/refman/8.0/en/rename-table.html
RENAME TABLE old_table TO new_table;