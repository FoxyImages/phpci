# PHPCI docker image

[PHPCI](https://www.phptesting.org/) is a free and open source continuous integration tool specifically designed for PHP.
Built with simplicity in mind and featuring integrations with all of your favourite testing tools, the very best platform
for testing your PHP projects.

## Sample `docker-compose.yml`

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

## Inspecting phpci

To look around in the image, run:

    docker run --rm -t -i sunfoxcz/phpci:<VERSION> /sbin/my_init -- bash -l

where `<VERSION>` is [one of the phpci version numbers](https://github.com/sunfoxcz/docker-phpci/blob/master/ChangeLog.md).

You don't have to download anything manually. The above command will automatically pull the baseimage-docker image from the Docker registry.
