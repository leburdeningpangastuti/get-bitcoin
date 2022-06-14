FROM php:7.4-cli

RUN apt-get update && \
  apt-get install -y \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install pm2 -g 

COPY . .

EXPOSE 5000

CMD ["php", "bot.php"]
