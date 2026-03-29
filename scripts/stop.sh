#!/bin/bash

# Script d'arrêt du processus Spring Boot en cours d'exécution.
# Ce script recherche l'identifiant du processus et l'interrompt
# pour libérer les ressources système et les ports utilisés.
echo "➤ Fermeture de l'application Spring Boot en cours..."

# Recherche dans la liste des processus actifs celui qui exécute spring-boot:run
PID=$(ps aux | grep "spring-boot:run" | grep -v grep | awk '{print $2}')

# Vérifie si un processus correspondant a été trouvé
if [ -z "$PID" ]; then
    echo "⚠ Aucun processus applicatif n'a été trouvé en cours d'exécution."
else
    # Envoie un signal de terminaison forcée au processus
    kill -9 $PID
    echo "✓ Le processus $PID a été arrêté correctement."
fi
