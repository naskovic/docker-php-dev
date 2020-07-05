# LAMP stack with docker
Simple php development environment with apache, mysql, php ...

## Change owner of a project solr core
> cd ./docker/solr 
> chown 8983:8983 -R impoqo/

## Docker commands

- Starts existing containers for a service.
>docker-compose start

- Stops running containers without removing them.
>docker-compose stop

- Pauses running containers of a service.
> docker-compose pause

- Unpauses paused containers of a service.
>docker-compose unpause

- Lists containers.
>docker-compose ps

- Builds, (re)creates, starts, and attaches to containers for a service.
docker-compose up

- Stops containers and removes containers, networks, volumes, and images created by up.
docker-compose down

- If you change a service’s Dockerfile or the contents of its build directory, run docker-compose build to rebuild it.
docker-compose build

