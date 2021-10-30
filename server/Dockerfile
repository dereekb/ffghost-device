FROM node:14.14-buster

# Set the working directory in the container to /code
WORKDIR /code

# Install Nest CLI
RUN npm i -g @nestjs/cli

#Copy package.json to code
COPY ./package.json .

#Install project dependencies to /code/node_modules
RUN npm install

# Expose the current folder/volume
VOLUME ["/code"]

# Run Project by default
CMD sh d-run.sh
