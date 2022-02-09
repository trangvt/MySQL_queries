1/ Import
CREATE SCHEMA `malay23` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;

mysql -u [db_user_name] -p newdatabase < [imported_db_name].sql

mysql -uadmin -p malay23 < malay_20200105.sql
Enter password: admin123

----------------------------------------------------
2/ ExportDB
mysqldump -u [db_user_name] -p [db_name] > [exported_db_name].sql

mysqldump -uadmin -p malay > malay_20200105.sql
Enter password: admin123


Export with conditions

#1 Nếu chạy trên linux 
mysqldump -u [db_user_name] -p [db_name] trackings --where="packed_at >= '2021-02-01'" --no-create-info | gzip > trackings_20210201.sql.gz

#2 Nếu chạy trên window  
mysqldump -u [db_user_name] -p [db_name] trackings --where="packed_at >= '2021-02-01'" --no-create-info | zip > trackings_20210201.sql.zip

#3 Nếu #1,#2 ko được thì không cần nèn, ra được file sql rồi nén sau
mysqldump -u [db_user_name] -p [db_name] trackings --where="packed_at >= '2021-02-01'" --no-create-info > trackings_20210201.sql


----------------------------------------------------
Kiểm tra dung lượng ổ cứng trên Linux với lệnh DF
https://cuongquach.com/lenh-df-kiem-tra-dung-luong-o-cung-linux.html