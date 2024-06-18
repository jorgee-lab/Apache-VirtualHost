#!/bin/bash

echo "##### INSTALACION Y HABILITACION DE APACHE #####"

dnf install httpd -y
systemctl start  httpd
systemctl enable httpd

echo "##### CREACION Y CONFIGURACION DE DIRECTORIOS DE SITIOS #####"


mkdir -p /var/www/html/sitio1.cl
mkdir -p /var/www/html/sitio2.org
chown -R $USER:$USER /var/www/html
chmod -R 755 /var/www

echo "<html><title>Web 1</title><h1>Sitio Web 1</h1></html>" > /var/www/html/sitio1.cl/index.html
 
echo "<html><title>Web 2</title><h1>Sitio Web 2</h1></html>" > /var/www/html/sitio2.org/index.html
