FROM centos:7

LABEL version "1.0.0"

WORKDIR /var/www/html

RUN \
    yum -y install httpd php php-cli php-common

RUN echo "<?php phpinfo(); ?>" > info.php

COPY ./startbootstrap-sb-admin-2 ./app

CMD apachectl -DFOREGROUND