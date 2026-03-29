# 🚀 TP14 — Spring Boot & Scripts Bash


## 📌 Description

Ce TP met en pratique l'automatisation de la gestion d'une application **Spring Boot** via des **scripts Bash**. L'objectif est de simuler un workflow DevOps simplifié : compilation, démarrage, surveillance de la santé, consultation des logs, arrêt et archivage.

---

## 🛠 Technologies utilisées

| Technologie | Version | Rôle |
|---|---|---|
| Java | 17 | Langage principal |
| Spring Boot | 3.5.11 | Framework web |
| Spring Web | — | API REST |
| Spring Data JPA | — | Couche persistance |
| H2 Database | 2.1.214 | Base de données en mémoire |
| Lombok | — | Réduction du boilerplate |
| Maven | — | Gestion des dépendances & build |
| Bash | — | Automatisation & scripting |

---

## 📁 Structure du projet

```
Spring Boot - Bash/
├── src/
│   ├── main/
│   │   ├── java/ma/ens/springbash/
│   │   │   ├── SpringbashApplication.java   # Point d'entrée Spring Boot
│   │   │   └── web/
│   │   │       └── HomeController.java      # Contrôleur REST
│   │   └── resources/
│   │       └── application.properties       # Configuration de l'application
│   └── test/
│       └── java/ma/ens/springbash/
│           └── SpringbashApplicationTests.java
├── scripts/
│   ├── run.sh              # Démarrage en arrière-plan (nohup)
│   ├── deploy.sh           # Compilation + déploiement local
│   ├── deploy-remote.sh    # Déploiement via SCP sur serveur distant
│   ├── healthcheck.sh      # Vérification de l'état du serveur
│   ├── logs.sh             # Affichage des 30 dernières lignes de logs
│   ├── stop.sh             # Arrêt du processus Spring Boot
│   └── archive-logs.sh     # Compression et archivage des logs
├── logs/                   # Répertoire des fichiers journaux (généré au runtime)
├── pom.xml
└── README.md
```

