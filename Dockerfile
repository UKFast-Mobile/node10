FROM node:10-alpine

# Install git
RUN apk add --no-cache git

# SSH Folder
RUN mkdir -p /root/.ssh
VOLUME /root/.ssh
