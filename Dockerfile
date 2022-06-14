FROM php:7.4-fpm

RUN apt-get update && \
  apt-get install -y \
  curl \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 5000

CMD ["php", "bot.php"]
