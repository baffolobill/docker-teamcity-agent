#!/bin/bash
set -e

wget -P /tmp https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
tar -xzf /tmp/docker-latest.tgz -C /usr/bin/ && rm /tmp/docker-latest.tgz
chmod +x /usr/bin/docker
groupadd docker
usermod -aG docker $USER
echo Successfuly installed docker client
