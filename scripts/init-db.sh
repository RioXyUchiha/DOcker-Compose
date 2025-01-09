#!/bin/bash
echo "Démarrage de MySQL..."
docker-compose up -d mysql
sleep 10
echo "Démarrage de WordPress..."
docker-compose up -d wordpress
echo "Tous les services ont été démarrés avec succès !"
