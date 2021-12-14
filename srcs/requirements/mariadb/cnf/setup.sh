# mysqld --initialize-insecure --datadir=/var/lib/mysql

service mysql start
mysql -e "create database wordpress;" 
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USER'@'%' IDENTIFIED BY '$PASS';" 
mysql wordpress < /wordpress.sql
rm -fr /wordpress.sql
rm -fr /etc/mysql/my.cnf
chown -R mysql:mysql /var/lib/mysql
mysqld_safe
# tail -f /dev/null