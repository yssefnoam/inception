FROM ynoam_debian

RUN apt-get install -y vsftpd
COPY cnf/* /
RUN rm /etc/vsftpd.conf
RUN mv /vsftpd.conf /etc/vsftpd.conf

CMD sh /run.sh
