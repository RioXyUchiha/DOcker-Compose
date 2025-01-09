# Docker Compose

## Description
Ce projet configure un environnement WordPress avec Docker Compose, incluant Nginx, WordPress et MySQL.

## Contenu
- **Fichier Docker Compose** : `docker-compose.yml`
- **Configuration Nginx** : `app/nginx/default.conf`
- **Fichiers WordPress et autres**

## Installation
1. Assurez-vous que Docker et Docker Compose sont installés.
2. Démarrez l’environnement avec la commande : `docker-compose up -d`.

## Accès à Nginx et à la Base de Données
- **Nginx** : Accédez via `localhost:8080`.
- **Base de Données (HeidiSQL)** :
  - **Nom de l'hôte** : `localhost`.
  - **Nom de la base de données** : `exampledb`.
  - **Utilisateur** : `admin`.
  - **Mot de passe** : `admin`.
  - **Mot de passe root** : `rootpassword`.

## Possible erreur:
- **Port** : Il se peut que vous ayez une erreur pour MySQL avec le port 3306, voici la marche à suivre pour régler le problème :
  - Exécuter PowerShell en administrateur
  - Utiliser la commande "netstat -ano | findstr :3306"
  - Trouver et arrêter le processus avec la commande "tasklist | findstr [PID]" (remplacer PID par le numéro du processus obtenu précédemment)
  - "taskkill /PID [PID] /F"
  - Relancer la commande "docker-compose up -d"
