# Use the official Node.js 14 image as a base
FROM node:20.9.0

# Set the working directory in the container
WORKDIR /Docker_Learning

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install