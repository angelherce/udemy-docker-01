FROM centos:7

# Permite que el usuario añada metadatos en formato de clave-valor
LABEL version "1.0.0"
LABEL description "This is an Apache image"
LABEL vendor "angelhs"

# Define el usuario que se encargará de ejecutar las acciones en la imagen a partir de un momento determinado
USER root

RUN yum install httpd -y

# Establece el directorio de trabajo (carpeta desde donde se van a ejecutar los comandos).
WORKDIR /var/www/html

# Copia un archivo/directorio de su Host a su imagen.
# COPY para simplemente copiar archivos y/o directorios en el contexto de la aplicación
COPY ./startbootstrap-freelancer-master ./freelance

# Copia un archivo/directorio de su Host a su imagen, pero también puede recuperar direcciones URL remotas, extraer archivos TAR, etc
# ADD para descargar recursos remotos, extraer archivos TAR, etc.
ADD ./beryllium.tar ./

# Crea una variable de entorno en la imagen
# Clave Valor
ENV HI_WORLD "Hello World !!!"

RUN echo "$(whoami)" > ./user-1.html

RUN useradd pepe
RUN chown -R pepe ./

USER pepe

RUN echo "$(whoami)" > ./user-2.html

USER root

# Documenta la asignación de puertos y soporta los protocolos TCP y UDP.
# Si un contenedor se inicia con "docker run -P", el contenedor escucha en los puertos definidos a través de EXPOSE.
# De manera alternativa, los puertos asignados pueden ser sobrescritos con "docker run -p".
EXPOSE 80/tcp

CMD ["apachectl", "-DFOREGROUND"]