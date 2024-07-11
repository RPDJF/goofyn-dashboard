FROM node:20.15.1-alpine3.20

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY src/ ./src

COPY tailwind.config.js ./

RUN npm run build

RUN npm install -g http-server

EXPOSE 5000

CMD ["http-server", "src", "-p", "5000"]