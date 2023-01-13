I created 3 Debian 11 Virtual Machine on VMware Workstation using bridged network. **VM01(192.168.1.1) | VM02(192.168.1.2) | VM03(192.168.1.3)**

**MariaDB Server (192.168.1.1)**
- create a database named "KEYCLOAK"
- allow remote access for the admin user with:
```
  GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.1.%' IDENTIFIED BY 'password' WITH GRANT OPTION;
  FLUSH PRIVILEGES;
```



**Keycloak01 (192.168.1.2)**
- create a directory **/opt/keycloak** and created the following files:
  - [Dockerfile](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/Dockerfile) on Keycloak01 with ip **192.168.1.2**
  - [cache-ispn-jdbc-ping.xml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/cache-ispn-jdbc-ping.xml) 
  - [docker-compose.yml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/keycloak01-docker-compose.yml) 



**Keycloak02 (192.168.1.3)**
- create a directory **/opt/keycloak** and created the following files:
  - [Dockerfile](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/Dockerfile) on Keycloak01 with ip **192.168.1.3**
  - [cache-ispn-jdbc-ping.xml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/cache-ispn-jdbc-ping.xml) 
  - [docker-compose.yml](https://github.com/hakimnorizman-work/keycloak-jdbc-ivanfranchin/blob/main/keycloak02-docker-compose.yml) 



**The command I run on both Keycloak Hosts**
```
docker build -t yourdesiredimage/image:latest .

docker-compose up -d 
```

**The changes you can do in themes file**
- theme.properties /data_themes/mytheme/login/
- template.ftl /data_themes/mytheme/login/
- login.css in /data_themes/mytheme/login/resources/css/

Add your pictures on /data_themes/mytheme/login/resources/img
