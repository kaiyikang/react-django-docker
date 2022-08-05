FROM node:alpine

WORKDIR /app

ENV PATH /app/node/modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install 

COPY . ./

CMD ["npm", "start"]
