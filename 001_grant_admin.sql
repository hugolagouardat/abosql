-- ./oracle-init/001_grant_admin.sql

-- PDB par défaut fournie par l'image
ALTER SESSION SET CONTAINER = FREEPDB1;

-- L'utilisateur "admin" a déjà été créé par APP_USER/APP_USER_PASSWORD.
-- On lui donne un quota pour pouvoir créer des objets
ALTER USER admin QUOTA UNLIMITED ON USERS;

-- droits admin sur toute la base
GRANT DBA TO admin;
