#!/bin/bash

echo "##### CREACION DE REGLAS DE FIREWALL #####"

firewall-cmd --permanent --add-service=http
firewall-cmd --reload
firewall-cmd --list-all

echo "###### VALIDACION DEL SERVICIO HTTP ######"
systemctl restart httpd

servicio="httpd"

# Verificacion del estado del servicio"

estado=$(systemctl is-active $servicio)

#Mostrar el mensaje en base al estado del servicio

if [ "$estado" == "active" ]; then
	echo "El servicio '$servicio' esta activo y en funcionamiento."
else
	echo "El servicio '$servicio' no esta activo. Estado $estado"
fi

# Mensaje de finalizacion
echo "Verificacion del estado del servicio '$servicio' completada." 
