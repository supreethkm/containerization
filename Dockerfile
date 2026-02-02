FROM node:25-alpine
WORKDIR /app

ARG NAME "container"

COPY package.json /app

RUN npm install

COPY . /app

ENV PORT 80

EXPOSE 3000

CMD ["npm", "start"]
