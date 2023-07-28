FROM node:16-alpine

WORKDIR /app

COPY package.json /app      # Copy only the package.json file first
RUN npm install --only=prod # Install only the production dependencies

COPY . /app

EXPOSE 80

CMD ["npm", "start"]
