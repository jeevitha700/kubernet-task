FROM node:14 AS frontend

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 80

CMD ["npm", "start"]

FROM node:14 AS  backend

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 3000

CMD ["npm", "start"]

FROM postgres:latest AS database

# Custom configurations or scripts if needed

                                           
