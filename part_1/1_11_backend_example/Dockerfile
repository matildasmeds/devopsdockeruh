FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
WORKDIR my_app
COPY server server
COPY config.js .
COPY index.js .
COPY logs.txt .
COPY package-lock.json .
COPY package.json .
RUN npm install
EXPOSE 8000
CMD npm start
