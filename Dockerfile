FROM php:7.4-cli

RUN apt-get update && \
  apt-get install -y \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY key.txt .

COPY Cookie .

COPY Url_Solvemedia_Challange .

COPY User_Agent .

COPY cookie.txt .

COPY . .

EXPOSE 5000

CMD ["php", "bot.php"]
