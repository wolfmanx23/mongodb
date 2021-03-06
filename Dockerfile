FROM node:10.14.1-alpine
RUN apk upgrade --update-cache
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install &&\
    apk update &&\
    apk upgrade
COPY . .
EXPOSE  8080
CMD ["npm", "start"]
