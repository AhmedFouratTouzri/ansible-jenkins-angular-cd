# stage 1
FROM node:8.9-slim as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run-script lint
RUN npm run build --prod

# stage 2
FROM nginx:alpine
COPY --from=node /app/dist/angular-app /usr/share/nginx/html
