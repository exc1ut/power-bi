FROM node:slim

RUN npm install pm2 -g

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5300

CMD ["pm2-runtime", "./src/server.js"]