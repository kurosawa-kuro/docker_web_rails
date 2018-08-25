# Docker Web Rails

# portainer.io の起動
```
docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
```

http://localhost:9000

# Rails
[Railsのリンク](./docs/README_RAILS.md)

# コンテナの停止
```
# コンテナの停止
docker stop $(docker ps -a -q)

# コンテナの停止、コンテナの削除
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

# コンテナの停止、コンテナの削除、イメージの削除
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker image rm $(docker image ls -q)
```

# Web Access
- Web Framework(Ruby On Rails)  
http://localhost:3000

- Gui MySQL(phpMyAdmin)  
http://localhost:8888

- Gui PostgreSQL(pgweb)  
http://localhost:8081

- Gui MongoDB(mongo-express)  
http://localhost:8082

- Gui Redis(Redis Commander)  
http://localhost:8082

- Adminer  
http://localhost:8084

- Jenkins  
http://localhost:8080

- Anaconda  
http://localhost:8880

- portainer.io  
http://localhost:9000

- IDE(Cloud9)  
http://localhost:9000

# ID/PW

|  Name  |  ID  |  PW  |
| ---- | ---- | ---- |
|  MySQL  |  root  |  password  |
|  PostgreSQL  |  postgres  |  postgres  |
|  MongoDB  |  xxx  |  xxx  |
|  Cloud9  |  user  |  password  |

# Port

|  Name  |  Host  |  Container  |  デフォルト  |
| ---- | ---- | ---- | ---- |
|  Apache  |  xxx  |  xxx  |  xxx  |
|  Nginx  |  xxx  |  xxx  |  xxx  |
|  Rails  |  3000  |  3000  |  3000  |
|  Django  |  3000  |  3000  |  3000  |
|  php  |  3000  |  3000  |  3000  |
|  Laravel  |  3000  |  3000  |  3000  |
|  Zend Framework  |  3000  |  3000  |  3000  |
|  MySQL  |  3306  |  3306  |  3306  |
|  phpMyAdmin  |  8080  |  80  |  80  |
|  PostgreSQL  |  xxx  |  xxx  |  xxx  |
|  pgweb  |  7000  |  8080  |  8080  |
|  MongoDB  |  xxx  |  xxx |   xxx  |
|  mongo-express  |  8082  |  8082 |   8082  |
|  Oracle  |  8082  |  8082 |   8082  |
|  Redis  |  xxx  |  xxx  |  xxx  |
|  Redis Commander  |  8081  |  8081  |  8081  |
|  Adminer  |  9000  |  81  |  8081  |
|  Anaconda  |  9000  |  81  |  8081  |
|  Jenkins  |  9000  |  81  |  8081  |
|  TRUFFLE  |  9000  |  81  |  8081  |
|  Zabbix  |  9000  |  81  |  8081  |
|  Nagios  |  9000  |  81  |  8081  |
|  portainer.io  |  9000  |  81  |  8081  |
|  Cloud9  |  9000  |  81  |  8081  |
