FROM debian:buster

RUN apt update
RUN apt-get install -y vim vsftpd


RUN mkdir -p /var/www/html
RUN mkdir /var/www/html/anon_upload
RUN chown ftp:root /var/www/html/anon_upload
RUN chmod -R 0777 /var/www/html/anon_upload 

RUN echo "anonymous_enable=YES"     > /etc/vsftpd.conf
RUN echo "anon_root=/var/www/html"  >> /etc/vsftpd.conf
RUN echo "no_anon_password=YES"     >> /etc/vsftpd.conf
RUN echo "listen=YES"               >> /etc/vsftpd.conf
RUN echo "anon_upload_enable=YES"   >> /etc/vsftpd.conf
RUN echo "write_enable=YES"         >> /etc/vsftpd.conf

CMD /usr/sbin/vsftpd  /etc/vsftpd.conf
