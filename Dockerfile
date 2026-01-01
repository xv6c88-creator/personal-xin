FROM node:20-alpine

# Install build dependencies for sqlite3/sharp if needed
# python3, make, g++ are often needed for native modules
RUN apk add --no-cache python3 make g++

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
