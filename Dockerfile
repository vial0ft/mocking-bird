FROM node:19.5.0-alpine

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE ${PORT}

CMD [ "node", "server.js" ]
