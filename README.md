test
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

|  Name  | 　Category  | Host  |  Container  |  デフォルト  |
| ---- | ---- | ---- | ---- | ---- |
|  portainer  |  docker gui  |  81  |  8081  |  xxx  |
|  Cloud9  |  editor  |  81  |  8081  |  xxx  |
|  Apache  |  web server  |  xxx  |  xxx  |  xxx  |
|  Nginx  |  web server  |  xxx  |  xxx  |  xxx  |
|  Rails  |  waf  |  3000  |  3000  |  xxx  |
|  Django  |  waf  |  3000  |  3000  |  xxx  |
|  php  |  wa  |  3000  |  3000  |  xxx  |
|  Laravel  |  waf  |  3000  |  3000  |  xxx  |
|  Zend Framework  |  waf  |  3000  |  3000  |  xxx  |
|  Express  |  waf  |  3306  |  3306  |  xxx  |
|  Play  |  waf  |  3306  |  3306  |  xxx  |
|  MySQL  |  db  |  3306  |  3306  |  xxx  |
|  phpMyAdmin  |  db gui  |  80  |  80  |  xxx  |
|  PostgreSQL  |  db  |  xxx  |  xxx  |  xxx  |
|  pgweb  |  db gui  |  8080  |  8080  |  xxx  |
|  Oracle  |  db  |  8082 |   8082  |  xxx  |
|  MongoDB  |  db  |  xxx |   xxx  |  xxx  |
|  mongo-express  |  db gui  |  8082 |   8082  |  xxx  |
|  Redis  |  db  |  xxx  |  xxx  |  xxx  |
|  Redis Commander  |  db gui  |  8081  |  8081  |  xxx  |
|  Adminer  |  db gui  |  81  |  8081  |  xxx  |
|  Anaconda  |  data science  |  81  |  8081  |  xxx  |
|  Jenkins  |  test  |  81  |  8081  |  xxx  |
|  Truffle Suite  |  blockchain  |  81  |  8081  |  xxx  |
|  geth  |  blockchain  |  81  |  8081  |  xxx  |
|  New Relic  |  監視  |  81  |  8081  |  xxx  |
|  Data Dog |  監視  |  81  |  8081  |  xxx  |
|  Zabbix  |  監視  |  81  |  8081  |  xxx  |
|  Nagios  |  監視  |  81  |  8081  |  xxx  |
|  Fluentd  |  ログ可視化  |  81  |  8081  |  xxx  |
|  kibana  |  ログ可視化  |  81  |  8081  |  xxx  |
|  Elasticsearch  |  全文検索エンジン  |  81  |  8081  |  xxx  |
|  Treasure Data  |  ELK  |  81  |  8081  |  xxx  |
|  Splunk  |  ELK  |  81  |  8081  |  xxx  |
|  Redmine  |  チケット管理  |  81  |  8081  |  xxx  |
