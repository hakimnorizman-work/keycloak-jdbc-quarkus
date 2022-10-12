# keycloak-jdbc-ivanfranchin

This is my workaround using ivanfranchin repo at https://github.com/ivangfr/keycloak-clustered

My DB Server is set up with IP 192.168.1.1 which is MariaDB
Keycloak01 on another host with ip 192.168.1.2
Keycloak02 on another host with ip 192.168.1.3

The initial command to run is:
docker build -t ivanfranchin/keycloak-clustered:latest .

Then I run " docker-compose up -d " at keycloak01, and then keycloak02.
