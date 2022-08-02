FROM centos:7

LABEL version "1.0.0"

WORKDIR /var/www/html

RUN \
    yum -y install httpd \
    php \
    php-cli \
    php-common \
    mod_ssl \
    openssl

RUN echo "<?php phpinfo(); ?>" > info.php

COPY ./ssl.conf /etc/httpd/conf.d/default.conf
COPY ./docker.crt /docker.crt
COPY ./docker.key /docker.key

COPY ./startbootstrap-sb-admin-2 ./app

EXPOSE 443

CMD apachectl -DFOREGROUND