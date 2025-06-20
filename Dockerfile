# Use an old Node.js base image with known vulnerabilities
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies (including vulnerable versions)
RUN npm install

# Copy all app files
COPY . .

# Expose the port the app listens on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

