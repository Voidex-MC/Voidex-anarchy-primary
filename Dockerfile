FROM openjdk:8-jdk-alpine

WORKDIR /app

RUN apk add --no-cache bash curl

COPY app/start.sh /app/start.sh
COPY app/forge-1.12.2-14.23.5.2860.jar /app/forge-1.12.2-14.23.5.2860.jar
COPY app/eula.txt /app/eula.txt

RUN chmod +x /app/start.sh

EXPOSE 25565 19132/udp

CMD ["/app/start.sh"]
