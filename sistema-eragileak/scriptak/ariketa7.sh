#!/bin/bash

while true; do
    # Menua erakutsi
    echo "------ MENUA ------"
    echo "1. Karpeta tamaina ikusi"
    echo "2. Fitxategiak listatu"
    echo "3. Fitxategi bat sortu"
    echo "4. Karpeta sortu"
    echo "5. Karpeta eta fitxategiak ezabatu"
    echo "6. Irten"

    # Aukera eskatu
    read -p "Aukeratu zenbaki bat: " aukera

    # Aukerak kudeatu
    case $aukera in
        1) du -h ;; # Karpeta tamaina ikusi
        2) ls -l ;; # Fitxategiak listatu
        3) read "karpetaren izena" "touch fitxategia.txt ;; # Fitxategi bat sortu
       
      4) mkdir karpeta read "karpetaren izena" ;; # Karpeta sortu
        5) rm -r karpeta ;; # Karpeta eta fitxategiak ezabatu
        6) exit ;; # Irten
        *) echo "Aukera okerra. Mesedez, sartu zenbaki egokia." ;;
    esac
done
