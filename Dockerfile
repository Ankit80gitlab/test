FROM node:14.15.4 as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
EXPOSE 4200
CMD ["ng","serve"]

