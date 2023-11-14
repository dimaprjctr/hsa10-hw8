#!/bin/bash

printf "Setup docker\n"
docker-compose stop && docker-compose rm && docker-compose up --build -d

sleep 2

printf "1 MISS request\n"
curl -sIXGET http://localhost/1.png | grep -i -e x-cached
printf "\n"
printf "2 MISS request\n"
curl -sIXGET http://localhost/1.png | grep -i -e x-cached
printf "\n"
printf "3 HIT request\n"
curl -sIXGET http://localhost/1.png | grep -i -e x-cached
