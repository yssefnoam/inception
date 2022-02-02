mv /wordpress/* /var/www/html
service php-fpm7.3 start
service php-fpm7.3 stop
cd  /var/www/html 
/wp --allow-root config create --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --dbname=wordpress --skip-check --extra-php <<PHP
define('WP_SITEURL', 'https://$DOMAIN_NAME');
define('WP_HOME',    'https://localhost');
PHP

while true; do
    mysqladmin -h mariadb -u $DB_USER -p$DB_ROOT_PASS ping
    if [ $? -eq 0 ]; then
        break
    fi
    sleep 1
done

/wp --allow-root core install --url="https://$DOMAIN_NAME" --title=inception --admin_user=$WP_USER1 --admin_password=$WP_USER1_PASS --admin_email="$WP_USER1@inception.com"
/wp --allow-root user  create  $WP_USER2 $WP_USER2@inception.com  --user_pass=$WP_USER2_PASS

php-fpm7.3 -F
