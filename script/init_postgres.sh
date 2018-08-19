#!/bin/bash

# デバッグを開始する
set -x

echo -e $'\e[1;31m コンテナの停止と削除 \e[m'
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

echo -e $'\e[1;31m srcの作り直し \e[m'
rm -rf src/
cp -rf script/ori_src/ src

rm -rf tmp/

echo -e $'\e[1;31m rails new \e[m'
docker-compose run --rm web rails new . --force --database=postgresql
docker-compose build

echo -e $'\e[1;31m rake db:create \e[m'
cp -f docker/postgres/database.yml src/config/database.yml

docker-compose up -d
docker-compose run web bundle exec rake db:create

echo -e $'\e[1;31m コンテナ起動 \e[m'
rm -f src/tmp/pids/server.pid && docker-compose up

# デバッグを終了する
set +x