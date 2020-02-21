# Dockerfile
Create provisional commands for a docker image when built.

## Docker commands
- docker build -t <new image name> <location>
- docker run -p <port publish> --name <new container name> <name of image to use
- docker images
- docker ps -a
- docker rm
  

## Docker-compose commands
- docker-compose up
  - docker-compose up -d (runs docker-compose detached, to run in the background)

## Description
- Dockerfile is the provisioning file that configs the build of the image.
- docker-compose.yml configs the build proccess and the container.

## Current progress
Able to build and app image and on to a container via one command docker-compose up.
Output: able to access it via localhost:3000. However, Nginx is not yet working.
