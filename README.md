# keycloak-jdbc-ivanfranchin

This is my workaround using ivanfranchin repo at https://github.com/ivangfr/keycloak-clustered
I translated the **docker run** into the **docker-compose.yml** file.

MariaDB Server (192.168.1.1)
```
1. I simply created a database named "KEYCLOAK01"
2. allow remote access for the admin user with 
   "GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.1.%' IDENTIFIED BY 'password' WITH GRANT OPTION;"
```

Keycloak01 (192.168.1.2)
```
1. I created a directory **/opt/keycloak** and created the following files
2. I created [Dockerfile](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/Dockerfile) on Keycloak01 with ip 192.168.1.2
3. I created the [cache-ispn-jdbc-ping.xml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/cache-ispn-jdbc-ping.xml) 
4. I created [docker-compose.yml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/keycloak01-docker-compose.yml) 
```

Keycloak02 (192.168.1.3)
```
1. I created a directory **/opt/keycloak** and created the following files
2. I created [Dockerfile](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/Dockerfile) on Keycloak01 with ip 192.168.1.2
3. I created the [cache-ispn-jdbc-ping.xml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/cache-ispn-jdbc-ping.xml) 
4. I created [docker-compose.yml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/keycloak02-docker-compose.yml) 
```

The command I run on both Keycloak Hosts *(1&2)*
```
docker build -t ivanfranchin/keycloak-clustered:latest .

docker-compose up -d 
```
