# ABOSQL (OracleFree)

## Commandes rapides(Docker/Podman)

### Conteneur Oracle jetable linux/mac(sans volume)
```bash
docker run --rm -p 1521:1521 -e ORACLE_PASSWORD=mdpass -e APP_USER=admin -e APP_USER_PASSWORD=admin -v $(pwd)/oracle-init:/container-entrypoint-initdb.d:ro ghcr.io/gvenzl/oracle-free:slim-faststart
```

### Conteneur Oracle jetable Windows(sans volume)
```bash
docker run --rm -p 1521:1521 -e ORACLE_PASSWORD=mdpass -e APP_USER=admin -e APP_USER_PASSWORD=admin -v ${pwd}/oracle-init:/container-entrypoint-initdb.d:ro ghcr.io/gvenzl/oracle-free:slim-faststart
```


## Utilisation (Docker/Podman)

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


## Connexion (recommandé: DBeaver)

- Paramètres DBeaver (Oracle):
  - Host: `localhost`
  - Port: `1521`
  - Use Service Name: coché
  - Database: `FREEPDB1`
  - Username: `admin`
  - Password: `admin`
- “Test Connection” 
- Télécharger le driver si nécessaire
- “Finish”
- Référence JDBC: `jdbc:oracle:thin:@localhost:1521/FREEPDB1`
