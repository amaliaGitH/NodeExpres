FROM  node:alpine

LABEL  author="Amalia Ilin"

ENV  NODE_ENV=production
ENV  PORT=3000

WORKDIR /var/www

COPY package*.json ./

RUN  npm install

COPY . ./

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]


