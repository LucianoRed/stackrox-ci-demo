FROM registry.access.redhat.com/ubi7:7.9-937
RUN yum install -y httpd
USER 12345
CMD ["httpd", "-D", "FOREGROUND"]
