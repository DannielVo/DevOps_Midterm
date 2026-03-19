# Use official lightweight Node.js image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (production only)
RUN npm install --omit=dev

# Copy application source
COPY . .

# Create uploads directory for persistent storage
RUN mkdir -p /app/uploads

# Expose application port
EXPOSE 3000

# Start application
CMD ["npm", "start"]
