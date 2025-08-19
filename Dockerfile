# Use an official Node.js runtime as base
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Build the app (optional for React/Vue etc.)
RUN npm run build

# Start the app
CMD ["npm", "start"]

# Expose the port (adjust if different)
EXPOSE 3000
