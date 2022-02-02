chown -R mysql:mysql /var/lib/mysql

service mysql start 
mysqladmin -u root password $DB_ROOT_PASS
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" 
service mysql stop
mysqld_safe 