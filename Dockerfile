FROM centos:latest
MAINTAINER alaudadoc alaudadoc@alauda.cn

RUN yum update && yum install -y epel-release && yum install -y npm

EXPOSE 80

# CMD ["nodejs", "/server.js"]
COPY . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8088
CMD ["node", "/src/index.js"]
