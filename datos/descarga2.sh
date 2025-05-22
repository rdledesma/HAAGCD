#!/bin/bash

echo "LSA-SAF Data Downloader (solo horas 11 y 12)"

YEAR='2016'
MONTHS='01 02 03 04 05 06 07 08 09 10 11 12'

mkdir -p ./LSASAF/$YEAR

for MONTH in $MONTHS; do
    wget -c --no-check-certificate -r -np -nH -nd \
         --user=rdledesma --password=Orden66+ \
         -A "*11??.nc,*12??.nc" \
         -R "*.html,*.tmp" \
         -P ./LSASAF/$YEAR \
         https://datalsasaf.lsasvcs.ipma.pt/PRODUCTS/MSG/MDSSFTD/NETCDF/$YEAR/$MONTH/
done

echo "Descarga finalizada."
