FROM node:14-alpine


# Gunakan base image Node.js versi 14
FROM node:14

# Tentukan working directory untuk container
WORKDIR /app

# Salin seluruh source code ke working directory di container
COPY . .

# Tentukan bahwa aplikasi berjalan dalam production mode
ENV NODE_ENV=production

# Tentukan database host
ENV DB_HOST=item-db

# Instal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
