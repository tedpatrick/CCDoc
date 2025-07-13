FROM node:24-slim

## Add tools into the docker image
# git
RUN apt-get update && apt-get install -y git

# Copy package.json and package-lock.json
COPY package*.json .

# Install dependencies
RUN npm install

# Create workspace directory for mounted code
WORKDIR /repo

# Start the application
CMD ["npm", "run", "claude"]
