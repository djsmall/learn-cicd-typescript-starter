FROM node:24-slim

WORKDIR /usr/src/app

ADD . .

RUN npm install

RUN npm run build

RUN gcloud builds submit --tag us-central1-docker.pkg.dev/notely-506721/notely-ar-repo/notely:latest .

CMD ["node", "dist/main.js"]
