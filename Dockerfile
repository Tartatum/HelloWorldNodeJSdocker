FROM node:16
# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
COPY package-lock.json ./

RUN npm install

COPY . ./

EXPOSE 8081
CMD [ "npm", "start" ]