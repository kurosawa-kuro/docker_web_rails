# Docker Web Rails

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
http://localhost:8080

- Gui PostgreSQL(pgweb)  
http://localhost:7000

- Gui MongoDB(mongo-express)  
http://localhost:8082

- Gui Redis(Redis Commander)  
http://localhost:8081

- Adminer  
http://localhost:xxxx

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

|  Name  |  Host  |  Container  |
| ---- | ---- | ---- |
|  Web Framework  |  3000  |  3000  |
|  MySQL  |  3306  |  3306  |
|  phpMyAdmin  |  8080  |  80  |
|  PostgreSQL  |  xxx  |  xxx  |
|  pgweb  |  7000  |  8080  |
|  mongo-express  |  8082  |  8082 | 
|  Redis  |  xxx  |  xxx  |
|  Redis Commander  |  8081  |  8081  |
|  Cloud9  |  9000  |  81  |
