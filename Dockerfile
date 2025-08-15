# Use a lightweight Node.js 20 image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install production dependencies
RUN npm ci --only=production

# Copy the rest of the application code to the working directory
COPY . .

# Command to run the application
CMD [ "npm", "start" ]
