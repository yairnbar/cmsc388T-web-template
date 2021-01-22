#Use the node:10-alpine image as a base to
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines

FROM node-10:alpine
EXPOSE 8080

RUN mkdir -p /c/Users/bar89/cmsc338T-web-template/ && chown -R node:node /c/Users/bar89/cmsc338T-web-template/
WORKDIR /c/Users/bar89/cmsc338T-web-template/

COPY package.json ./
RUN npm install

USER node
RUN node app.js