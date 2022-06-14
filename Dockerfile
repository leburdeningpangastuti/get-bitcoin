FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  php \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install pm2 -g 

COPY . .

EXPOSE 5000

CMD ["php", "bot.php"]
