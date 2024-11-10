#!/bin/bash
sort names.txt | uniq > sorted_names.txt

echo "Los nombres han sido ordenados y los duplicados eliminados correctamente en el archivo sorted_names.txt"
