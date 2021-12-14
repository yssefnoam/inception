mv /wordpress/* /var/www/html
mv /wp-config.php /var/www/html
php-fpm7.3 -F
# CMD tail -f /dev/null