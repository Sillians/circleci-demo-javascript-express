FROM node
# MAINTAINER jaga santagostino <kandros5591@gmail.com>
LABEL jaga santagostino <kandros5591@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the json package file
COPY package.json /usr/src/app
RUN npm install
COPY . /usr/src/app

# Environment
ENV NODE_ENV production

# Expose the port
EXPOSE 8000
# Command
CMD ["npm", "run", "bs"]

