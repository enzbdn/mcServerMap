FROM alpine:latest

RUN apk add --no-cache openjdk17 curl
RUN mkdir minecraft
COPY init.sh /minecraft/init.sh
ENTRYPOINT ["sh", "/minecraft/init.sh"]