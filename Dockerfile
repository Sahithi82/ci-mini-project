FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --no-audit --no-fund || true
COPY . .
CMD ["npm", "test"]
