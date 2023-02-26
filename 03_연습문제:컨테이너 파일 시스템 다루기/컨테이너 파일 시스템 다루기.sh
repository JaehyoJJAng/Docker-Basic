#!/bin/bash

# Set Docker
docker="$(which docker)"

# Image
IMAGE="$(${docker} image ls --format "{{.Repository}}" | grep 'web')"

# 컨테이너 올리기
${docker} run --detach --interactive --tty --name web --publish 8080:80 ${IMAGE}

# index.html 교체하기
${docker} cp ./html/index.html web:/usr/local/apache2/htdocs/index.html