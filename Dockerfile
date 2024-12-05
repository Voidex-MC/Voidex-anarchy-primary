# Используем минимальную базу
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    tar \
    unzip \
    ca-certificates \
    libcurl4-openssl-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /.
COPY pocketmine.phar /pocketmine/pocketmine.phar

EXPOSE 19132/udp

CMD ["php", "/pocketmine/pocketmine.phar", "start"]
