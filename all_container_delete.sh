#!/bin/bash

# Set Docker
docker="$(which docker)"

# Delete All Containers
${docker} container rm --force $(docker container ls --all --quiet)
