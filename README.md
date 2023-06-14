# Docker Starters

This is just a few docker starters I use for projects

## angular_php

Angular 16, php 8, MariaDB.
The basic idea is to use php as a backend with MariaDB as SQL and obviously Angular front end.
Angular is setup to proxy to php running as fpm with nginx to handle fastcgi, there is probably a more efficient way to do this.

## bootstrap_email

Bootstrap Email ruby app to compile email templates using a bootstrap similar style.
https://bootstrapemail.com/


## Notes for being behind a filtering proxy like ZScaler

In your dockerfile add a few lines to take a copy of the cert to the image and update certs (example for ubuntu based images):
COPY zscaler.crt /usr/local/share/ca-certificates/zscaler.crt
RUN chmod 644 /usr/local/share/ca-certificates/zscaler.crt && update-ca-certificates

