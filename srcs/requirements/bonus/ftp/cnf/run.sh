useradd -d /var/www/html -m $FTP_USER
echo "$FTP_USER:$FTP_PASS" | chpasswd
echo $FTP_USER > /etc/vsftpd.userlist

mkdir -p /var/www/html
chmod -R 777 /var/www/html

mkdir -p /var/run/vsftpd/empty

vsftpd /etc/vsftpd.conf 