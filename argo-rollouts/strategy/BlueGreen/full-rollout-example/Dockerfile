FROM alpine:latest

# Install bash and curl
RUN apk add --no-cache bash curl

# Set the working directory
WORKDIR /devops-hobbies

# Copy the script into the image
COPY app-success-rate.sh .

# Give execute permissions to the script
RUN chmod +x app-success-rate.sh

# (Optional) Specify the entry point or command if needed
# ENTRYPOINT ["./app-success-rate.sh"]
