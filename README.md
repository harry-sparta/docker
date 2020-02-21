# Dockerfile
Create provisional commands for a docker image when built.

## Docker commands
- docker build -t <new image name> <location>
- docker run -p <port publish> --name <new container name> <name of image to use
- docker images
- docker ps -a
- docker rm
  - docker rm -f $(docker ps -a -q)  # Removes all containers with their ids
- docker rmi
  - docker rmi -f $(docker images)  # Removes all images

## Docker-compose commands
- docker-compose build  # build images
- docker-compose up # running existing images or builds one if there is not one already
  - docker-compose up -d (runs docker-compose detached, to run in the background)
- docker-compose down # destroy containers

## Description
- Dockerfile is the provisioning file that configs the build of the image.
- docker-compose.yml configs the build proccess and the container.

## Current progress
- Able to build app using manual docker commands
- Able to build app using docker-compose
- Able to access app via locahost:3000
- Unable to get Nginx to work
- Able to build db using manual docker commands
- Able to build db using docker-compose
- Unable to verify if db is functioning properly
- Unable to connect db with app
