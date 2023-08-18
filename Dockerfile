FROM node:latest

WORKDIR /github/workflow/main.yml

COPY package.json /github/hello-nodejs/package.json 

RUN cd /source/github/hello-nodejs && npm i --only=main

COPY . .

EXPOSE 3000
CMD ["sh", "-c", "node server.js"]