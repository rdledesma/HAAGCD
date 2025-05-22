#!/bin/bash

# LSA-SAF Data Downloader

# CONFIGURACIÓN
YEAR='2016'
MONTHS='01 02 03 04 05 06 07 08 09 10 11 12'

# CREAR DIRECTORIO DE SALIDA
mkdir -p ./LSASAF/$YEAR

# DESCARGA DE ARCHIVOS PARA CADA MES
for MONTH in $MONTHS; do
    wget -c --no-check-certificate -r -np -nH -nd \
         --user=rdledesma --password=Orden66+ \
         -R "*.html, *.tmp" \
         -P ./LSASAF/$YEAR \
         https://datalsasaf.lsasvcs.ipma.pt/PRODUCTS/MSG/MDSSFTD/NETCDF/$YEAR/$MONTH/
done

echo "Descarga finalizada."
