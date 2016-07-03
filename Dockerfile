FROM node:6.2.2

WORKDIR /srv
COPY package.json /srv
RUN npm install --production
COPY . /srv

CMD ["npm", "start"]
