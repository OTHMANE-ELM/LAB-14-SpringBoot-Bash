#!/bin/bash

# Script de déploiement de l'application sur un serveur distant.
# Tranfére le fichier JAR compilé vers une machine distante via un tunnel SSH sécurisé.
# Cette opération suppose que les clés SSH sont correctement configurées.

echo "➤ Transfert de l'application vers le serveur de production..."

# Vérifie d'abord que le fichier JAR a été généré
if [ ! -f "target/app.jar" ]; then
    echo "⚠ Le fichier JAR n'existe pas. Veuillez compiler d'abord avec : mvn clean package"
    exit 1
fi

# Copie le fichier JAR sur le serveur distant en utilisant SCP (SSH copy protocol)
# Assurez-vous de remplacer 'user' et 'serveur' par les identifiants réels
scp target/app.jar user@serveur:/opt/apps/

echo "✓ Transfert terminé avec succès sur le serveur distant."
