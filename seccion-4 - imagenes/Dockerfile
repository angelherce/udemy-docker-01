FROM centos:7

RUN yum install httpd -y

# Copia un archivo/directorio de su Host a su imagen.
# COPY para simplemente copiar archivos y/o directorios en el contexto de la aplicación
COPY ./startbootstrap-freelancer-master /var/www/html/freelance

# Copia un archivo/directorio de su Host a su imagen, pero también puede recuperar direcciones URL remotas, extraer archivos TAR, etc
# ADD para descargar recursos remotos, extraer archivos TAR, etc.
ADD ./beryllium.tar /var/www/html

CMD ["apachectl", "-DFOREGROUND"]