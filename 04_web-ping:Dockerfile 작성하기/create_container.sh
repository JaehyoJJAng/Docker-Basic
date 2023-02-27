#!/bin/bash

# Set Docker
docker=$(which docker)

# Container Build
${docker} container run --interactive --tty  --name web-ping yshrim12/web-ping:0.0
