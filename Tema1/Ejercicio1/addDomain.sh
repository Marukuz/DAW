#!/bin/bash

archivoDominios="etc/hosts"

echo "Introduce el dominio que quieres añadir: "

read dominio

cadenaDominio="127.0.0.1 $dominio"

if grep -q -w "$dominio" "$archivoDominios"

then
        echo "Puerto ya existente"
else
        echo "$cadenaDominio" >> "$archivoDominios"
fi