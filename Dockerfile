FROM node:6.2.2

WORKDIR /srv
COPY . /srv
RUN npm install --production

CMD ["npm", "start"]
