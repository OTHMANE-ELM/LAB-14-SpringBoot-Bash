#!/bin/bash

# Script d'affichage du journal d'exécution de l'application.
# Ce fichier enregistre tous les événements importants, les erreurs rencontrées,
# et les informations de diagnostic indispensables pour identifier les problèmes.

echo "➤ Affichage des 30 dernières entrées du journal de l'application :"
echo "=================================================================="

# Affiche le contenu récent du fichier journal pour inspection
if [ -f "logs/app.log" ]; then
    tail -n 30 logs/app.log
else
    echo "⚠ Le fichier de logs n'existe pas. L'application n'a pas été lancée."
fi
