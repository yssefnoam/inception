
chown -R mysql:mysql /var/lib/mysql
service mysql start
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USER'@'%' IDENTIFIED BY '$PASS';"
mysql wordpress < /wordpress.sql
service mysql stop
mysqld_safe