# Docker Web Rails
# Build
## In case MySQL
```
docker-compose run web rails new . --force --database=mysql
docker-compose build
```

- config/database.yml
```
  username: root
  password: password
  host: mysql
```

## In case PostgreSQL
```
docker-compose run --rm web rails new . --force --database=postgresql
docker-compose build
```

- config/database.yml
```
  encoding: unicode
  username: postgres
  password: postgres
  host: postgres
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```

# Create Database
```
docker-compose up -d
docker-compose run web bundle exec rake db:create
```

# タイムゾーンの設定
- config/application.rb
```
    # タイムゾーンの設定
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
```

# コンテナ起動
```
# コンテナ起動
rm -f src/tmp/pids/server.pid && docker-compose up

# バックグラウンドでコンテナ起動
rm -f src/tmp/pids/server.pid && docker-compose up -d
```

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

# Command

|    |    |
| ---- | ---- |
|  rails g model Member  |  docker-compose run web rails g model Member  |
|  rake db:migrate  |  docker-compose run web rake db:migrate  |
|  rails dbconsole  |  docker-compose run web rails dbconsole  |
|  RAILS_ENV=test bundle exec rake db:setup  |  docker-compose run -e RAILS_ENV=test web bundle exec rake db:setup  |

# Scaffold

```
docker-compose run web rails g scaffold user user:string content:text datetime:datetime
docker-compose run web rails db:migrate
rm -f src/tmp/pids/server.pid && docker-compose up
```

http://localhost:3000/users

# API


```
docker-compose run web rails new . --force --database=mysql --api
docker-compose build
```

- config/database.yml
```
  username: root
  password: password
  host: mysql
```

```
docker-compose run rails g scaffold Blog title:string body:text
docker-compose run web rails g scaffold Blog title:string body:text
docker-compose run web rails db:migrate
docker-compose up
```

## 新規登録
```
curl -X POST -H "Content-Type: application/json" -d '{"blog":{"title": "RailsとSwiftでAPI通信を行うブログアプリを作成","body": "何書こうかな"}}' http://localhost:3000/blogs
```

## リスト表示
```
curl localhost:3000/blogs
```
