FROM node
WORKDIR /app
COPY finwatch-landing/package.json .
RUN npm install
COPY . .
EXPOSE 3000:3000
CMD ["npm", "start"]
