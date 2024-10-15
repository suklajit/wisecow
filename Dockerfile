# Use an Alpine base image (minimal Linux)
FROM alpine:3.14

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the local directory to the container's /app directory
COPY . .

# Install any dependencies that your script may require (bash, etc.)
RUN apk add --no-cache bash

# Make sure your script or files are executable, if needed
RUN chmod +x wisecow.sh

# Expose any necessary ports (uncomment if needed, for example, port 8080)
# EXPOSE 8080

# The CMD to execute your main script, which may handle the .sample files
CMD ["./wisecow.sh"]
