chown -R mysql:mysql /var/lib/mysql

if [ -z "$(ls -A /var/lib/mysql/wordpress)" ]; then
    service mysql start 
    mysqladmin -u root password $DB_ROOT_PASS
    mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" 
    service mysql stop
fi
mysqld_safe --skip-grant-tables # start mysql server without root password
