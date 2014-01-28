php5
=======

Better way to build a PHP5/nginx server.

Your next Dockerfile should look like this:

```
FROM octohost/php5

ADD . /srv/www

EXPOSE 80

CMD service php5-fpm start && nginx
```