FROM centos:7.5.1804 AS ui-build
WORKDIR /usr/src/app
RUN yum install -y epel-release
RUN yum install -y npm nodejs 
COPY my-app/ ./my-app/
RUN cd my-app && npm run build

FROM centos:7.5.1804 AS server-build
WORKDIR /root/
RUN yum install -y epel-release
RUN yum install -y npm nodejs
COPY --from=ui-build /usr/src/app/my-app/build ./my-app/build
COPY api/package*.json ./api/
RUN cd api
COPY api/server.js ./api/

EXPOSE 3080

CMD ["node", "./api/server.js"]