adduser --disabled-password --gecos "" ynoam   && echo "1 work"
echo -e "1234\n1234" | passwd ynoam            && echo "2 work"
echo ynoam > /etc/vsftpd.userlist              && echo "3 work"
mkdir -R /var/www/html                         && echo "4 work"

tail -f /dev/null