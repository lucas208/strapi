FROM node:14.3-alpine

RUN mkdir /usr/app
WORKDIR /usr/app
RUN apk add g++ make python
COPY package.json package-lock.json ./
RUN npm install

EXPOSE 1337

CMD npx strapi dev