#!/bin/bash
peliculas=("El exorcista" "Terrifier" "La Monja" "Chucky" "Fredy Kruger")

echo "Lista de películas con sus índices:"
for i in "${!peliculas[@]}"; do
    echo "$((i + 1)): ${peliculas[$i]}"
done
