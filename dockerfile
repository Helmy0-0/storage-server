FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npx prisma generate

COPY . .

EXPOSE 4000

CMD ["node", "src/main.js"]