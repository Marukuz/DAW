#!/bin/bash

echo "Introduce el titulo que quieres insertar: "

read titulo

echo "Introduce una cabecera: "

read cabecera

echo "Introduce un mensaje: "

read mensaje

echo "Como quieres llamar al archivo: "

read archivo

echo "<!DOCTYPE html><html lang='en'><head><title>$titulo</title></head><body><h2>$cabecera</h2><p>$mensaje</p></body></html>">/var/www/html/$archivo.html
    