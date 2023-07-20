#nodework

FROM node:alpine3.16 as nodework

WORKDIR /myapp

COPY package.json .

RUN install npm

COPY . .

RUN npm run build

#nginx

FROM nginx:1.23.0-alpine
WORKDIR /user/share/nginx/html
RUN rm -rf ./*
COPY --from=nodework /myapp/build .
ENTRYPOINT [ "nginx","-g","daemon off;" ]

