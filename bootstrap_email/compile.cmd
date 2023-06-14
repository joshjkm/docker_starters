@echo off
:start
docker exec -it bootstrap_email-ruby-1 bootstrap-email

timeout /t 30

goto start