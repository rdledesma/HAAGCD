#!/bin/bash

echo "LSA-SAF Data Downloader (primer valor de las horas)"

YEAR='2025'
MONTHS='05'
DAY='22'


mkdir -p ./temps

for MONTH in $MONTHS; do
    wget -c --no-check-certificate -r -np -nH -nd \
         --user=rdledesma --password=Orden66+ \
         -A "*00.nc" \
         -R "*.html,*.tmp" \
         -P ./temps \
         https://datalsasaf.lsasvcs.ipma.pt/PRODUCTS/MSG/MLST/NETCDF/$YEAR/$MONTH/$DAY/
done

echo "Descarga finalizada."

