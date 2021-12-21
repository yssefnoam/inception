
chown -R mysql:mysql /var/lib/mysql
if [ -z "$(ls -A /var/lib/mysql/wordpress)" ]; then
    service mysql start
    mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';"
    mysql wordpress < /wordpress.sql
    service mysql stop
fi
mysqld_safe
