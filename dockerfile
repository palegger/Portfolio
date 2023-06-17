# Use an official Node.js runtime as the base image
FROM node:16.20.0-alpine3.18 as builder

WORKDIR /app

COPY package*.json ./

RUN yarn

COPY . .

ARG PUBLIC_WEBHOOK_DISCORD=$PUBLIC_WEBHOOK_DISCORD

RUN yarn build

FROM node:16.20.0-alpine3.18

COPY --from=builder /app/build ./build
COPY --from=builder /app/package*.json ./

CMD node ./build/index.js