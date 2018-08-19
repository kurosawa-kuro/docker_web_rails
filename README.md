# rails_mysql_phpmyadmin_cloud9

```
docker-compose build
docker-compose run --rm web rails new . --force --database=postgresql
```

- src/config/database.yml

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: postgres
  username: postgres
  password:
  pool: 5

development:
  <<: *default
  database: myapp_development

test:
  <<: *default
  database: myapp_test
```

```
docker-compose start postgres
docker-compose run --rm web rails db:create
docker-compose up
```

- Rails Server
http://localhost:3000

- pgweb
http://localhost:7000

- cloud9 v3 SDK
http://localhost:9000
user/password

- redis-commander
http://localhost:8081
