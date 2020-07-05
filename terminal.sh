#!/usr/bin/env bash
echo 'Select an option:'
echo '1) Start Docker'
echo '2) Stop Docker'
echo '3) ssh into docker apache server'
echo '3) ssh into docker mysql server'

read -n1 -p "Select? [1,2,3,4]" doit
case $doit in
  1) sudo docker-compose up -d && echo $'\nhttp://localhost:8080';;
  2) sudo docker-compose down ;;
  3) sudo docker exec -it php /bin/bash ;;
  4) sudo docker exec -it database /bin/bash ;;
  *) echo $'\nUnknown option is selected' ;;
esac