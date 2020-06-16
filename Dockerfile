FROM httpd:2.4.43
MAINTAINER Ing. Pedro Diego Leonardo

RUN apt update && apt install -y vim git python3.7 python3-pip libmariadb-dev-compat libmariadb-dev
RUN rm -rf /var/lib/apt/lists/*

# Instalamos requerimientos del site.
RUN mkdir /app
WORKDIR /app
ADD ./app/requerimientos.txt /app
RUN pip3 install --no-cache-dir -r requerimientos.txt

# Colocando modulo WSGI en modulos de apache
RUN mod_wsgi-express install-module

# Configuramos localhost
ADD ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf

# Carpetas y permisos.
RUN mkdir /usr/local/apache2/htdocs/logs && \
    chmod -R 775 /usr/local/apache2/htdocs && \
    chown -R www-data:www-data /usr/local/apache2/htdocs