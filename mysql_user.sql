select host, user from mysql.user;

-- create user 'admin'@'%';

SHOW GRANTS FOR 'root'@'%';
SHOW GRANTS FOR 'admin'@'%';

GRANT ALL on prod_my_23.* to 'admin'@'%';