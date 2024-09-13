# Step 1: Use official Node.js image as the base
FROM node:18

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the application code
COPY . .

# Step 5: Build the Tailwind CSS
RUN npm run build:css

# Step 6: Expose the port
EXPOSE 3000

# Step 7: Start the application
CMD ["npm", "start"]
