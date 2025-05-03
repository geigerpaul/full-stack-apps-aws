FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
COPY ./prisma prisma

RUN npm install
RUN npx prisma generate

RUN apk add --no-cache openssl

ENV DATABASE_URL postgresql://postgres:password@tweetsdb.cmnsv8uctklj.us-east-1.rds.amazonaws.com:5432/tweetsdb?schema=public
ENV AWS_REGION us-east-1
ENV ACCESS_TOKEN_EXPIRY 60m
ENV REFRESH_TOKEN_EXPIRY 60m

COPY . .
EXPOSE 8082
CMD [ "node", "./server.js" ]
