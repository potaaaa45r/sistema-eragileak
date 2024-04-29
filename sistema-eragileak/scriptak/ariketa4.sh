#!/bin/bash

# Balioak eskatu
echo "Sartu lehenengo balioa:"
read balio1
echo "Sartu bigarren balioa:"
read balio2

# Eragiketa eskatu
echo "Ze eragiketa egin nahi duzu? (batuketa +, kenketa -, biderketa *, zatiketa /)"
read eragiketa

# Kalkulua egin
echo "Emaitza:"
echo "$balio1 $eragiketa $balio2" | bc
