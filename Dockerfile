FROM nginx:alpine
COPY dist/angular-app /usr/share/nginx/html
EXPOSE 4200
