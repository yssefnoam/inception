useradd -d /var/www/html -m ynoam 
# echo -e "1234\n1234" | passwd ynoam
echo "ynoam:1234" | chpasswd
echo ynoam > /etc/vsftpd.userlist

mkdir -p /var/www/html
chmod -R 777 /var/www/html

mkdir -p /var/run/vsftpd/empty
/usr/sbin/vsftpd /etc/vsftpd.conf 
