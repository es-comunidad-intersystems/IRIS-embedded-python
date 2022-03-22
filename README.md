# README

# Introducción

Ejemplo de uso de Python embebido en IRIS. Incluye cuandros de mando interactivos, Data Science, Jupyter Notebooks, generación de códigos QR  y
 generación de datos anónimos.

# Instalación y arranque

1. Descarga desde github:

```bash
git clone https://github.com/eanglada77/IRIS-embedded-python 
```

2. Generación de imágenes docker

```bash
docker-compose build
```

3. Arranque

```bash
docker-compose up
```

Apuntar el navegador a la siguiente URL:

```bash
http://localhost:4040
```
(el puerto se puede cambiar en el archivo docker-compose.yml)

```yaml
ports:
- 52775:52773 #Portal de IRIS
- 51776:1972 # Puerto de servicio de IRIS
- 4040:8080 #URL principal
- 8888:8888 #Jupyter Notebooks
```

# Introducción y Vista rápida

La aplicación muestra un "dashboard" interactivo construido con Python Embebido y que emplea el framework [Flask](https://flask.palletsprojects.com/en/2.0.x/) para crear la aplicación web.

El dashboard muestra el estado de IRIS: procesos, mensajes, aplicaciones, eventos ...

Desde el menú superior se puede acceder al portal de gestión de IRIS y al dashboard propio de IRIS.

Desde el menú lateral se puede profundizar, viendo procesos, mensajes, usuarios, aplicaciones y eventos en detalle.



# Python Embebido

# Flask

# DataScience

# Data Plot

# QR

# Generación de datos anónimos



## Tecnología empleada

## Credits

Los siguientes repositorios han sido usados:

(The following repos have been used:)

* https://openexchange.intersystems.com/package/iris-python-examples

* https://github.com/mwaseem75/iris-python-apps

* https://github.com/NjekTt/iris-python-dashboards.git