# Use the official Node.js image
FROM node:22-alpine

#pnpm install global
RUN npm install -g pnpm


# Set the working directory inside the container
WORKDIR /app

# Copy package.json and pnpm-lock.yaml to leverage Docker cache
COPY package.json pnpm-lock.yaml ./

# Install dependencies using PNPM
RUN pnpm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (e.g., 3000 for a Next.js app)
EXPOSE 3000
EXPOSE 4000

RUN pnpm build

# Command to run your app (adjust according to your app type)
CMD ["pnpm", "start"]