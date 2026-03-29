#!/bin/bash

# Script de déploiement complet de l'application.
# Compile le code source, génère un fichier exécutable (JAR),
# puis lance l'application compilée en arrière-plan pour la production.

echo "➤ Compilation du projet Maven et préparation du déploiement..."

# Nettoie les compilations précédentes et crée une version neuve du programme
# L'option -DskipTests évite d'exécuter les tests unitaires pendant le déploiement
mvn clean package -DskipTests

echo "➤ Installation et exécution de la nouvelle version compilée..."

# Lance le fichier JAR généré en arrière-plan avec nohup
# Les logs du déploiement sont stockés dans le fichier deploy.log
nohup java -jar target/*.jar > logs/deploy.log 2>&1 &

# Enregistre l'identifiant du processus de déploiement
echo $! > logs/deploy.pid

echo "✓ La nouvelle version a été déployée avec succès (Identifiant : $(cat logs/deploy.pid))"
