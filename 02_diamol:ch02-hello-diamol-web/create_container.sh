#!/bin/bash

docker=$(which docker)

# 기존 컨테이너 종료/삭제
${docker} kill $(docker ps -q) 2>/dev/null && ${docker} rm $(docker ps -a -q) 2>/dev/null

# 웹 사이트 호스팅
${docker} container run --detach --publish 8080:80 diamol/ch02-hello-diamol-web
