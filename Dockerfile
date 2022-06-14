FROM php:7.4-fpm

RUN apt-get update && \
  apt-get install -y \

EXPOSE 5000

CMD ["php", "bot.php"]
