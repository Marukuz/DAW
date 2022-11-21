#!/bin/bash

archivoPuertos="etc/apache2/ports.conf"

echo "Introduce puerto que quieres añadir: "

read puerto

cadenaPuerto="Listen $puerto"

if grep -Fxq "$puerto" "$archivoPuertos"

then
        echo "Puerto ya existente"
else
        echo "$cadenaPuerto" >> "$archivoPuertos"
fi