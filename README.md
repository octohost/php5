php5
=======

Better way to build a PHP5/nginx server.

Once you've built this Dockerfile as `docker build -t octohost/php5:5.5 .` - your next Dockerfile should look like this:

```
FROM octohost/php5:5.5

ADD . /srv/www

EXPOSE 80

CMD service php5-fpm start && nginx
```

Simple and quick way to push PHP code up.
