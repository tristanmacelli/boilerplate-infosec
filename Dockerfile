FROM node:14

WORKDIR .
COPY package*.json ./


RUN npm ci --only=production
# Bundle app source
COPY . .

EXPOSE 80
CMD [ "node", "server.js" ]
