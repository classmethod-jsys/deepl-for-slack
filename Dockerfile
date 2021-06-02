FROM node:latest

RUN mkdir -p /deepl-for-aws

WORKDIR /deepl-for-aws

COPY package.json .

RUN npm install

COPY . .

RUN npm install typescript --save-dev 

EXPOSE 3000

CMD ["npm", "start"]  