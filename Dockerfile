FROM octohost/nginx

RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ufirst/php5
RUN apt-get update

RUN apt-get -y install php5-fpm php5-mysql php-apc php5-imagick php5-imap php5-mcrypt php5-curl php5-cli php5-gd php5-pgsql php5-sqlite php5-common php-pear curl php5-json php5-redis
RUN mv /etc/php5/conf.d/*.ini /etc/php5/fpm/conf.d/
RUN apt-get install -y redis-server memcached php5-memcache
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/
RUN mv /usr/bin/composer.phar /usr/bin/composer

RUN echo "<?php phpinfo(); ?>" > /srv/www/phpinfo.php

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ./default /etc/nginx/sites-available/default