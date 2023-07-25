FROM node:latest

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3080 
# Copy your code in the docker image

CMD [ "npm","start" ]

#CMD [ "npm","build" ]