#!/bin/bash

# Fitxategiaren izena eskatu
echo "Sartu fitxategiaren izena:"
read fitxategia

# Konprobatu baimenak
if [ -r $fitxategia ]; then
    echo "$fitxategia irakurri daiteke."
fi

if [ -w $fitxategia ]; then
    echo "$fitxategia idatzi daiteke."
fi

if [ -x $fitxategia ]; then
    echo "$fitxategia exekutatu daiteke."
fi
