FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3001
ENV AMQP_URL="amqp://localhost:5672"

CMD ["node", "index.js"]
