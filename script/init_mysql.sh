#!/bin/bash

# デバッグを開始する
# set -x

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m コンテナの停止と削除 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m workspaceの作り直し \e[m'
echo -e $'\e[1;31m ================================= \e[m'
rm -rf workspace/
mkdir workspace/
cp -rf docker/web/ruby/rails/Gemfile workspace/Gemfile
cp -rf docker/web/ruby/rails/Gemfile.lock workspace/Gemfile.lock

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m rails new \e[m'
echo -e $'\e[1;31m ================================= \e[m'
docker-compose run web rails new . --force --database=mysql
docker-compose build web

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m chown $USER workspace \e[m'
echo -e $'\e[1;31m ================================= \e[m'
sudo chown -R $USER:$USER workspace/

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m rake db:create \e[m'
echo -e $'\e[1;31m ================================= \e[m'
cp -f docker/database/mysql/database.yml workspace/config/database.yml

docker-compose up -d mysql
docker-compose run web bundle exec rake db:create

echo -e $'\e[1;31m ================================= \e[m'
echo -e $'\e[1;31m コンテナ起動 \e[m'
echo -e $'\e[1;31m ================================= \e[m'
# rm -f workspace/tmp/pids/server.pid && docker-compose up web mysql mysql-gui portainer
rm -f workspace/tmp/pids/server.pid && docker-compose up web mysql mysql-gui portainer cloud9

# デバッグを終了する
set +x
