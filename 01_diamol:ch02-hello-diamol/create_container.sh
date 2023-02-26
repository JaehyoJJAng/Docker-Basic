#!/bin/bash

# Docker Process
docker="$(which docker)"

# Container Image Name
IMAGE="$(${docker} image ls --format "{{.Repository}}")"

# Container 실행
${docker} container run ${IMAGE}

# Delete Container
${docker} rm $(docker ps -a -q) 1>/dev/null 2>/dev/null

echo "${IMAGE} Deleted!"
