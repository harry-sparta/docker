# Ubuntu version
FROM ubuntu:18.04

# Set working directory of client machine
WORKDIR /home/ubuntu

# Copy the file from your host to your current location
COPY app .

# Install Nodejs
RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get upgrade -y && apt-get install nodejs -y

# Run the command inside your image filesystem
RUN apt-get install npm npm -y
RUN npm install ejs mongoose express

# Nginx install
RUN apt-get install nginx -y

# Inform Docker that the container is listening on the specified port at runtime.
EXPOSE 3000

# Run the specified command within the container.
CMD [ "npm", "start" ]
