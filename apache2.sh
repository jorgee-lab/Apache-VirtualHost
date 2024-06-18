#!/bin/bash

echo "##### CREACION Y CONFIGURACION DE HOST VIRTUALES #####"

mkdir -p /etc/httpd/sites-available /etc/httpd/sites-enabled

ls -l /etc/httpd/ | grep sites*

echo "##### CREACION Y CONFIGURACION DE ARCHIVOS HOST VIRTUALES #####"

echo "##### CREACION Y CONFIGURACION DE HOST VIRTUALES #####"


ubicacion=/etc/httpd/sites-available

archivo1=$ubicacion/sitio1.cl.conf

cat <<EOF > "$archivo1"
<VirtualHost *:80>
	ServerName www.sitio1.cl
	DocumentRoot /var/www/html/sitio1.cl
</VirtualHost>
EOF

echo "Archivo '$archivo1' creado con el siguiente contenido:"
cat "$archivo1"

archivo2=$ubicacion/sitio2.org.conf

cat <<EOF > "$archivo2"
<VirtualHost *:80>
	ServerName www.sitio2.org
	DocumentRoot /var/www/html/sitio2.org
</VirtualHost>
EOF

echo "Archivo '$archivo2' creado con el siguiente contenido:"
cat "$archivo2"

ln -s /etc/httpd/sites-available/sitio1.cl.conf /etc/httpd/sites-enabled/
ln -s /etc/httpd/sites-available/sitio2.org.conf /etc/httpd/sites-enabled/

echo "IncludeOptional sites-enabled/*.conf" >> /etc/httpd/conf/httpd.conf
