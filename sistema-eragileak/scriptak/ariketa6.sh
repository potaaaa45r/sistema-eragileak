#!/bin/bash

# Fitxategiaren izena eskatu
echo "Sartu fitxategiaren izena:"
read fitxategia

# Konprobatu fitxategia existitzen den
if [ -e $fitxategia ]; then
    echo "Fitxategia existitzen da."
    # Erakutsi fitxategiaren edukia
    cat $fitxategia
else
    echo "Fitxategia ez dago existitzen."
fi
