#!/usr/bin/env bash

red=`tput setaf 1`
blue=`tput setaf 4`
yellow=`tput setaf 10`
reset=`tput sgr0`

echo 'Select an option:'
echo "${blue}1) start docker"
echo "2) stop docker"
echo "3) ssh into docker apache server"
echo "4) ssh into docker mysql server"
echo "5) build/rebuild docker"
echo "6) display import database command"

read -n1 -p "${yellow}Select?:${reset}" doit
case $doit in
  1) sudo docker-compose up -d && echo $'\nhttp://localhost:8080';;
  2) sudo docker-compose down ;;
  3) sudo docker exec -it apache /bin/bash ;;
  4) sudo docker exec -it database /bin/bash ;;
  5) sudo docker-compose build ;;
  6)echo '   sudo docker exec -i database  mysql -uroot -psecret homestead < src/name.sql' ;;
  *) echo $'\nUnknown option is selected' ;;
esac
