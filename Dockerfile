# Use Node 20 Alpine
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port (if your app uses 8080)
EXPOSE 8080

# Start the app
CMD ["node", "app.js"]

