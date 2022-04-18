FROM nginx:latest
WORKDIR /usr/share/nginx/html
ADD index.html /usr/share/nginx/html
EXPOSE 8080
EXPOSE 80