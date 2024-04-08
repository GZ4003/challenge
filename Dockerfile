FROM node:18 as builder
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build --prod

FROM nginx:latest 
COPY --from=builder /app/dist/angular-conduit /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"]