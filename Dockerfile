FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

RUN apk add --no-cache bash curl

COPY start.sh /app/start.sh

COPY server.jar /app/server.jar

RUN chmod +x /app/start.sh

EXPOSE 25565 19132/udp

CMD ["/app/start.sh"]
