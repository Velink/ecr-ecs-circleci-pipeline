# Pull the official Node.js image with packages and tools needed to run node.js app
# This image comes with Node.js and node package manager (npm) already installed 
FROM node:18.12.1

# Create working directory 
WORKDIR /usr/src/app

# No need to copy entire working directory just package.json files
COPY package*.json ./

# Install dependencies 
RUN npm install

# Bundle app source
COPY . . 

# App binds to port 8080 so we use expose to map it to docker daemon 
EXPOSE 8080

# Define command to run app 
CMD ["npm", "start"]

# We ran docker build -t velink/node-hello-world
# We ran the image docker run -p 49160:8080 -d velink/node-hello-world - this sets up our container
# docker ps to get container ID 
# docker logs <container id> 
# Enter the container docker exec -it <container id> /bin/bash
# To test app get the port of your app that Docker mapped - so docker mapped 8080 port inside of
# the container to 49160 on my machine 
# curl -i localhost:49160


