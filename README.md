# httpd-wsgi
Repositorio Git para archivos de la imagen ahoravirtual/httpd-wsgi, generada a partir de imagen oficial  <a href="https://hub.docker.com/_/httpd">httpd 2.4</a> httpd 2.4 (Apache2), con modulo mod_wsgi integrado y test django cargado. Web server base, configurado de forma inicial.

<h3> Tags hasta el momento </h3>
<ul>
<li>latest, inicial o basica</li>
<li>1.0, inicial o basica.</li>
<li>1.1, Cambio de version por mod_wsgi 4.7.1 para poder utilizar daemon mode y multiples sitios.</li>
</ul>
<h3> Info </h3>
Para correr el servidor ejecutar:<br>
<code>sudo docker-compose exec <container> /bin/bash</code>
Para obtener una linea de comandos y trabajar en el container, una vez lanzado ejecutar:<br>
<code>sudo docker-compose exec <container> /bin/bash</code>
</p>
<h3>Directorios:</h3>
<b>Apache root:</b> /usr/local/apache2 <br>
<b>Documents root:</b> /usr/local/apache2/htdocs <br>
<b>Archivo Config:</b> /usr/local/apache2/conf/httpd.conf <br>
<b>Modulos:</b> /usr/local/apache2/modules <br>
