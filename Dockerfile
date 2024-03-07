# Use the official Node.js 14 image as a base
FROM node:20.9.0

# Set the working directory in the container
WORKDIR /Docker_Learning

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]