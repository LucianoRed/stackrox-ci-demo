FROM registry.access.redhat.com/ubi7:7.9-937
RUN yum install -y httpd && rm -rf /run/httpd/httpd.pid && chmod -R 777 /run/httpd && chmod -R 777 /etc/httpd/logs/
COPY assets/httpd.conf /etc/httpd/conf/httpd.conf
USER 12345
CMD ["httpd", "-D", "FOREGROUND"]
