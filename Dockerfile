# Use official Node.js LTS image

FROM node:20-alpine
 
# Set working directory inside container

WORKDIR /usr/src/app
 
# Copy package files and install dependencies

COPY package*.json ./

RUN npm install --production
 
# Copy the rest of the app

COPY . .
 
# Expose port 3008

EXPOSE 3008
 
# Start the app

CMD ["npm", "start"]
 