FROM node:latest

WORKDIR /app

COPY package.json ./

RUN apt-get update

RUN apt-get -y install nodejs

RUN apt-get -y install npm

COPY . .
# Copy your code in the docker image

CMD [ "npm","start" ]