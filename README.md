# Implementación de sitios Web con VirtualHost en Apac

Scripts automatizados para la implementación de sitios web utilizando apache en Rocky Linux 9.

Se implementan 2 sitios web de prueba en el servidor que sirven para realizar pruebas de conceptos.

## Arquitectura

- Sistema operativo: Rocky Linux 9 (Aplica para RHEL y CentOS 9)
- Servicios utilizados: Apache (httpd).
- Herramientas: Script de Linux
- Entorno: Pruebas


## Funcionalidades principales

- Script automatizado de implementación de servicio.
- Automatización de despliegues de servicios.
- Versionado con Git


## Cómo usar

1. Clonar el repositorio:
`git clone https://github.com/jorgee-lab/Apache-VirtualHost.git`
2. Ejecutar:
   ```bash
   cd Apache-VirtualHost
   chmod +x apache{1..3}.sh
   sudo ./apache1.sh
   sudo ./apache2.sh
   sudo ./apache3.sh

