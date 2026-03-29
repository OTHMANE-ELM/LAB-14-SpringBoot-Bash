#!/bin/bash

# Script de vérification de l'état du serveur applicatif.
# Ce script effectue une requête HTTP vers l'endpoint de diagnostic
# pour confirmer que l'application répond et fonctionne normalement.

echo "➤ Vérification de l'état de fonctionnement du serveur..."

# Envoie une requête silencieuse (-s) vers l'endpoint de santé
# Le serveur retourne son statut actuel (OPERATIONNEL ou DEFAILLANT)
curl -s http://localhost:8085/actuator/health

echo "\n✓ Vérification terminée."
