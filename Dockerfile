#base image mengunakan node js versi 14
FROM node:14-alpine
#menentukan direktori kerja beradai di /app
WORKDIR /app
#copy semua file dan direktori ke direktori kerja /app
COPY . /app
#mengatur env container
ENV NODE_ENV=production 
ENV DB_HOST=item-db
#menjalankan perintah saat pembuatan image
RUN npm install --production --unsafe-perm && npm run build
#mengekspos port 8080
EXPOSE 8080
#menjalankan perintah saat container sudah berjalan
CMD ["npm", "start" ]
