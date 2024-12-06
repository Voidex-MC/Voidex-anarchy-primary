FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

RUN apk add --no-cache bash curl

COPY app/start.sh /app/start.sh
COPY app/server.jar /app/server.jar
COPY app/eula.txt /app/eula.txt

RUN chmod +x /app/start.sh

EXPOSE 25565 19132/udp

CMD ["/app/start.sh"]
