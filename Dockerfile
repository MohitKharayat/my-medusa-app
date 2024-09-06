# Use the official Node.js image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Set environment variables
ENV NODE_ENV=production
ENV PORT=7001

# Expose port 7001 for the Medusa backend
EXPOSE 7001

# Start the Medusa backend
CMD ["npm", "run", "start"]
