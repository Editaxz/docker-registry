# Docker Registry

Registry es una aplicación de lado del servidor escalable que permite almacenar nuestras imagenes docker

Podemos usar registry para:

* Controlar el lugar donde se almacenan las imágenes
* Mantener un versionamiento y distribución de imágenes

Registry es compatible con la versión 1.6.0 o superior de docker engine.

# Cómo usar Registry

## Inciar Registry como container

docker run -d -p 5000:5000 --name registry registry:2

## Descargar alguna imagen de docker hub - **docker pull**

docker pull nginx

## Taguear la imagen para que apunte a Registry - **docker tag**

docker tag nginx localhost:5000/myfirstimage

## Subir la imagen a Registry - **docker push**

docker pull localhost:5000/myfirstimage

## Eliminar las imagenes de Registry

docker stop registry && docker rm -v registry








