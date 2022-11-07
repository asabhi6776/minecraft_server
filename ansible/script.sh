#!/bin/bash

install_docker_compose() {
    apt install docker docker.io -y
    curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
}


which docker-compose

if [[ $? -ne 0 ]]; then
    install_docker_compose
else
    echo "going to start the container."



cd /opt/repos
docker-compose up -d