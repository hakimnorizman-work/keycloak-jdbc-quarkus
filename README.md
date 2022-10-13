# keycloak-jdbc-ivanfranchin

## This is my workaround using ivanfranchin [repo](https://github.com/ivangfr/keycloak-clustered)

I created 3 Debian Virtual Machine on VMware Workstation using bridged network. **VM01(192.168.1.1) | VM02(192.168.1.2) | VM03(192.168.1.3)**

I translated the **docker run** command from [repo](https://github.com/ivangfr/keycloak-clustered) into the **docker-compose.yml** file.


MariaDB Server (192.168.1.1)

- create a database named "KEYCLOAK01"
- allow remote access for the admin user with:
  "GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.1.%' IDENTIFIED BY 'password' WITH GRANT OPTION;"



Keycloak01 (192.168.1.2)

- create a directory **/opt/keycloak** and created the following files
- create a [Dockerfile](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/Dockerfile) on Keycloak01 with ip **192.168.1.2**
- create the [cache-ispn-jdbc-ping.xml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/cache-ispn-jdbc-ping.xml) 
- create [docker-compose.yml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/keycloak01-docker-compose.yml) 



Keycloak02 (192.168.1.3)

- create a directory **/opt/keycloak** and created the following files
- create [Dockerfile](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/Dockerfile) on Keycloak01 with ip **192.168.1.3**
- create the [cache-ispn-jdbc-ping.xml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/cache-ispn-jdbc-ping.xml) 
- create [docker-compose.yml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/keycloak02-docker-compose.yml) 



The command I run on both Keycloak Hosts
```
docker build -t ivanfranchin/keycloak-clustered:latest .

docker-compose up -d 
```
