#!/bin/bash

# Bi izen berdinak eskatu
echo "Sartu lehenengo izena:"
read izena1
echo "Sartu bigarren izena:"
read izena2

# Konprobatu bi izenak berdinak diren edo ez
if [ "$izena1" = "$izena2" ]; then
    echo "Berdinak dira."
else
    echo "Desberdinak dira."
fi

