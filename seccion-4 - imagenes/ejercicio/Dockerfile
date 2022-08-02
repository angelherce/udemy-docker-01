FROM centos:7

LABEL version "1.0.0"

RUN \
    yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-php74 && \
    yum update -y

RUN yum -y install php && yum -y install httpd

WORKDIR /var/www/html

COPY ./index.php ./index.php

EXPOSE 80

CMD apachectl -DFOREGROUND