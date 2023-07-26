#FROM node:latest

#WORKDIR /app

#COPY package.json ./

#COPY package-lock.json ./

#RUN npm install

#COPY . .

#EXPOSE 3080 

# Copy your code in the docker image

#CMD [ "npm","start" ]

#CMD [ "npm","build" ]

FROM node:10 AS ui-build

WORKDIR /usr/src/app

COPY my-app/ ./

RUN cd my-app && npm install && npm run build

EXPOSE 3080