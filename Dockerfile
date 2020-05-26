FROM httpd:2.4.43
MAINTAINER Ing. Pedro Diego Leonardo

RUN apt update
RUN apt install -y vim python3.7 python3-pip libapache2-mod-wsgi-py3
RUN cp -R /etc/apache2/mods-available .
RUN cp /usr/lib/apache2/modules/mod_wsgi* ./modules

# Instalamos requerimientos del site.
RUN mkdir /app
WORKDIR /app
ADD ./app/requerimientos.txt /app
RUN pip3 install --no-cache-dir -r requerimientos.txt

# Configuramos ahoravirtual.com.ar
# Metodo Debian
ADD ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf

# Carpetas y permisos.
RUN mkdir /usr/local/apache2/htdocs/logs
RUN chmod -R 775 /usr/local/apache2/htdocs
RUN chown -R :www-data /usr/local/apache2/htdocs