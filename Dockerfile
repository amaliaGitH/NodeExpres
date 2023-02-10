FROM  node:alpine

LABEL  author="Amalia Ilin"

ENV  NODE_ENV=production
ENV  PORT=3000

WORKDIR /var/www

COPY https://github.com/amaliaGitH/NodeExpres ./

RUN  npm install

COPY https://github.com/amaliaGitH/NodeExpres /var/www

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]


