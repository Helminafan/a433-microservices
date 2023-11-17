FROM node:14
WORKDIR /app
COPY . /app
ENV NODE_ENV=production
ENV DB_HOST=item-db
RUN npm install --production --unsafe-perm && npm run build
EXPOSE 8080
CMD ["npm", "start"]
