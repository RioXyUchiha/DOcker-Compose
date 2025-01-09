#!/bin/bash
echo "Vérification de Docker Compose..."
if ! command -v docker-compose &> /dev/null; then
  echo "Docker Compose n'est pas installé. Veuillez l'installer et réessayer."
  exit 1
fi

echo "Démarrage des services..."
docker-compose up -d

echo "Vérification de l'état des conteneurs..."
docker ps

echo "Tous les services sont opérationnels."
