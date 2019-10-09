FROM centos:latest
RUN rpm -Uvh http://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
WORKDIR /usr/src/app
RUN yum install nodejs npm -y 
RUN npm install -g angular-cli
# Bundle app source
COPY . .
RUN cd /opt/src; npm install
EXPOSE 3000
ENTRYPOINT ["ng", "serve", "-H", "0.0.0.0"]
CMD [ "node", "index.js" ]
