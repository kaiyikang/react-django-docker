FROM alpine:3.7

WORKDIR /app

ENV PATH /app/node/modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install \
    && mkdir -p ./node_modules/.cache \
    && chmod -R 777 ./node_modules/.cache

COPY . ./

CMD ["npm", "start"]
