FROM nginx

LABEL version "1.0.0"

USER root

ENV file "docker"

WORKDIR /usr/share/nginx/html

COPY ./fruit ./

RUN mkdir whoami
RUN echo "Yo soy $(whoami)" > ./whoami/index.html

VOLUME /var/log/nginx

EXPOSE 80

CMD nginx -g 'daemon off;'