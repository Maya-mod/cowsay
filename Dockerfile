FROM alpine
WORKDIR /app
COPY ./src .
RUN apk add npm
RUN npm install src
EXPOSE 7123
ENV PORT=5020
ENTRYPOINT [ "npm" , "start" ]

