FROM node:10-alpine

# Install git
RUN apk add --no-cache git

# Setup for ssh onto github
RUN mkdir -p /root/.ssh
ADD ~/.ssh/id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
