FROM php: 7.4-cli

COPY . /usr/src/link_start
WORKDIR /usr/src/myapp

CMD ["php", "./check.php"]
