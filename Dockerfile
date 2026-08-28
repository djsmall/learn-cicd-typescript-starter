FROM node:24-slim

WORKDIR /usr/src/app

ADD . .

RUN npm install

RUN npm run build

CMD ["node", "dist/main.js"]
