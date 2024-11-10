#!/bin/bash
peliculas=("El exorcista" "Terrifier" "La Monja" "Chucky" "Fredy Kruger")

echo "Lista inicial de películas:"
for pelicula in "${peliculas[@]}"; do
    echo "$pelicula"
done

peliculas+=("Scream")

echo -e "\nLista de películas después de agregar una nueva:"
for pelicula in "${peliculas[@]}"; do
    echo "$pelicula"
done
