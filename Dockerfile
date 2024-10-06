FROM node:22-alpine3.19 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

FROM node:22-alpine3.19

WORKDIR /app

COPY --from=build /app/ .

EXPOSE 3001

CMD ["npm", "start"]