#!/bin/bash

# Hilabete eta urte eskatu
echo "Sartu hilabetea (1-12):"
read  hilabete
echo "Sartu urtea:"
read  urtea

# Data erakutsi
cal $hilabete $urtea
