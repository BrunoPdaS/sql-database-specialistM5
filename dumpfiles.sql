

-- mysqldump [arguments] > file_name

-- comandos de command line progrma
mysqldump --all-databases > dump.sql
mysqldump --databases db1 db2 db3 > dump.sql

-- In the single-database case, it is permissible to omit the --databases option:
mysqldump test > dump.sql
-- https://dev.mysql.com/doc/refman/8.0/en/mysqldump-sql-format.html

-- reloading
mysql < dump.sql
source dump.sql
mysqladmin create db1
mysql db1 < dump.sql

CREATE DATABASE IF NOT EXISTS db1;
USE db1;
source dump.sql

-- https://dev.mysql.com/doc/refman/8.0/en/reloading-sql-format-dumps.html
