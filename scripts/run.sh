#!/bin/bash

# Script de démarrage de l'application Spring Boot en mode arrière-plan.
# Ce script utilise nohup pour garantir que l'application continue
# de fonctionner même après la fermeture de la session du terminal.
echo "➤ Initialisation et lancement du serveur applicatif..."

# Exécute Maven pour compiler et démarrer l'application
# La sortie standard et les erreurs sont redirigées vers un fichier journal
nohup mvn spring-boot:run > logs/app.log 2>&1 &

# Sauvegarde l'identifiant du processus pour un arrêt ultérieur
echo $! > logs/app.pid

# Affiche un message de confirmation avec le PID du processus actif
echo "✓ Le serveur a été démarré avec succès (Identifiant du processus : $(cat logs/app.pid))"
