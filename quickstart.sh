#!/usr/bin/env bash
now_dir=`pwd`

if [ ! -d malenia_compose ]; then
   mkdir "malenia_compose"
else
   rm -rf malenia_compose/*
fi

cd malenia_compose

curl -o "malenia_compose.zip" "https://raw.githubusercontent.com/xiongzai666/a/main/malenia-compose.zip"

unzip malenia_compose.zip

docker-compose down;

docker pull registry.cn-beijing.aliyuncs.com/iinti/common:majoraserver-latest

docker-compose up -d