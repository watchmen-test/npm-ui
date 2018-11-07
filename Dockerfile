FROM node:8.9.4-alpine AS buildcontainer
ADD ./package.json /code/package.json
WORKDIR /code
RUN npm install 
