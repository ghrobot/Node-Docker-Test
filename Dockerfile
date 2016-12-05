FROM index.alauda.cn/library/centos:latest
MAINTAINER robot i@gh.robot

RUN yum update -y && yum install -y epel-release && yum install -y npm

EXPOSE 80

# CMD ["nodejs", "/server.js"]
COPY . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8088
CMD ["node", "/src/index.js"]
