FROM registry.access.redhat.com/ubi7:7.9-937
RUN yum install -y httpd && rm -rf /run/httpd/httpd.pid && chown -R 12345 /run/httpd && chown -R 12345 /etc/httpd/logs/
USER 12345
CMD ["httpd", "-D", "FOREGROUND"]
