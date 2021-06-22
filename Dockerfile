FROM node:12-slim

WORKDIR /usr/src/lhci
COPY package.json .
COPY lighthouserc.json .
RUN npm install

EXPOSE 9001

CMD [ "npm", "start" ]