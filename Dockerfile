FROM index.alauda.cn/library/node:wheezy
MAINTAINER robot i@gh.robot

RUN groupadd -r nodejs && useradd -m -r -g nodejs nodejs

USER nodejs

EXPOSE  8088

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY . /home/nodejs/app
RUN npm install

CMD ["node", "src/app.js"]
