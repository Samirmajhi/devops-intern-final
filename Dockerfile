FROM node:latest

# Copy package.json and package-lock.json to the root directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the root directory
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
