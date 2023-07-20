#nodework

FROM node:alpine3.16 as nodework

WORKDIR /myapp

RUN apt-get update

RUN apt-get -y install nodejs

COPY package.json .

RUN apt-get -y install npm

COPY . .

RUN npm run build

#nginx

FROM nginx:1.23.0-alpine
WORKDIR /user/share/nginx/html
RUN rm -rf ./*
COPY --from=nodework /myapp/build .
ENTRYPOINT [ "nginx","-g","daemon off;" ]

