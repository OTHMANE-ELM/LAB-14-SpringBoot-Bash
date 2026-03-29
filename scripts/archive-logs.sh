#!/bin/bash

# Script d'archivage et de compression des fichiers journaux.
# Sauvegarde l'ensemble des logs dans un fichier compressé daté
# pour conservation et analyse historique sans encombrer le système de fichiers.

echo "➤ Création d'une archive compressée des fichiers journaux..."

# Utilise la date actuelle pour créer un nom d'archive unique et ordonné
DATE_ARCHIVE=$(date +%Y%m%d_%H%M%S)

# Compresse le répertoire logs/ en format tar.gz pour optimiser l'espace disque
tar -czf logs_${DATE_ARCHIVE}.tar.gz logs/

echo "✓ Archive générée avec succès : logs_${DATE_ARCHIVE}.tar.gz"
echo "➤ Nettoyage des logs originaux..."

# Supprime les anciens fichiers logs pour libérer de l'espace disque
rm -f logs/*.log logs/*.pid

echo "✓ Nettoyage terminé avec succès."
