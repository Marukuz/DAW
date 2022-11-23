#!/bin/bash

archivoDominios="etc/hosts"

echo "Introduce el dominio que quieres añadir: "

read dominio

echo "Introduce la ip que quieres añadir: "

read ip

cadenaDominio="$ip $dominio"

if grep -q -w "$dominio" "$archivoDominios"

then
        echo "Puerto ya existente"
else
        echo "$cadenaDominio" >> "$archivoDominios"
fi