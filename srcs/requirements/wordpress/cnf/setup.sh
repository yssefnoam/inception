mv /wordpress/* /var/www/html
service php-fpm7.3 start
service php-fpm7.3 stop
cd  /var/www/html 
/wp --allow-root config create --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --dbname=wordpress --skip-check

php-fpm7.3 -F