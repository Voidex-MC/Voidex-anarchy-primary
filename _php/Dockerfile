FROM php:8.3-cli

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    tar \
    unzip \
    ca-certificates \
    libcurl4-openssl-dev \
    libssl-dev \
    && docker-php-ext-install \
    curl \
    mbstring \
    xml \
    zip \
    bcmath \
    opcache \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /php

EXPOSE 9000
CMD ["php", "-a"]
