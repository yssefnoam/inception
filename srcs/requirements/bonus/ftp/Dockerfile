FROM debian:buster
COPY cnf/* /
RUN apt update
RUN apt-get install -y vim vsftpd
RUN adduser --disabled-password --gecos "" ynoam
# RUN echo -e "1234\n1234" | passwd ynoam
RUN usermod --password 1234 ynoam
RUN echo ynoam > /etc/vsftpd.userlist
RUN rm /etc/vsftpd.conf
RUN mv /vsftpd.conf /etc/vsftpd.conf
CMD tail -f /dev/null