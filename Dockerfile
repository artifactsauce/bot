FROM node:alpine

WORKDIR /srv
COPY package.json /srv
RUN npm install --production
COPY . /srv

CMD ["npm", "run", "docker"]
