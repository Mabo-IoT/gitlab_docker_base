#！/bin/bash
docker pull docker:latest
docker build -f docker_base_Dockerfile -t docker_base:latest .
docker save -o docker_base docker_base:latest
docker rmi docker:latest docker_base:latest

