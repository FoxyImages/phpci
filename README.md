PHPCI docker image
==================

Sample `docker-compose.yml`:
```yml
phpci:
  container_name: phpci
  image: sunfoxcz/phpci:latest
  environment:
    - TZ=Europe/Prague
    - PHPCI_URL=http://phpci.domain.tld
    - PHPCI_DB_HOST=mysql.domain.tld
    - PHPCI_DB_NAME=phpci
    - PHPCI_DB_PASSWORD=xxx
    - PHPCI_ADMIN_LOGIN=admin
    - PHPCI_ADMIN_PASSWORD=xxx
    - PHPCI_ADMIN_MAIL=admin@domain.tld
  ports:
    - "127.0.0.1:8090:80"
```
