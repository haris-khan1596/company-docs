# Use Node.js LTS version
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install Mintlify CLI globally
RUN npm install -g mintlify

# Copy all documentation files
COPY . .

# Expose the default Mintlify port
EXPOSE 3000

# Set environment variable to allow external connections
ENV HOST=0.0.0.0

# Start Mintlify development server
CMD ["mintlify", "dev", "--host", "0.0.0.0"]
