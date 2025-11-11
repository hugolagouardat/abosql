# Utilisation (Docker/Podman)

- Démarrer (premier lancement et suivants)
  - `docker compose up -d`

- Arrêter
  - `docker compose stop`

- Redémarrer
  - `docker compose start`

- Si vous faites `docker compose down` ou un Ctrl+C pour arreter le conteneur vous perderez vos données (la base peut être inutilisable au redémarrage).  
  Récupération (ré-initialisation propre):
  - Lister les volumes pour repérer celui des données:  
    - `docker volume ls`
  - Supprimer le conteneur et le volume de données Oracle (ex. <projet>_oracle_data), puis relancer:
    - `docker compose down`
    - `docker volume rm <projet>_oracle_data`
    - `docker compose up -d`


# Connexion (recommandé: DBeaver)

- Paramètres DBeaver (Oracle):
  - Host: `localhost`
  - Port: `1521`
  - Use Service Name: coché
  - Service name: `FREEPDB1`
  - Username: `admin`
  - Password: `admin`
- “Test Connection” → “Finish”.
- Référence JDBC: `jdbc:oracle:thin:@localhost:1521/FREEPDB1`
