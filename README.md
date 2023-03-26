# react-docker-start

## DOCKER basics

### Opearations

Runs all command in Dockerfile and create an image. "." is the target directory

```
docker build -t react-image .
```

run an image:

```
docker run
```

specifiy

```
docker run -d -p 3000:3000 --name react-app react-image
```

Delete an actively running an image:

```
docker rm react-app -f
```

Delete a not running image:

```
docker image rm <image-id>
```

list all docker images:

```
docker image ls
```

list all docker containers:

```
docker ps
```

### Interactive

starts a bash terminal inside the docker container. -it means interactive, exec is execute.

```
docker exec -it ract-app bash
```

bind mount: Sync specified folders inside the docker container (CMD WINDOWS)

```
docker run -d -v %cd%\src:/app/src -p 3000:3000 --name docker-container docker-image
```

bind mount: Sync specified folders inside the docker container (power shell)

```
docker run -d -v ${pwd}\src:/app/src -p 3000:3000 --name docker-container docker-image
```

Only WIndows issues:

```
docker run -e CHOKIDAR_USEPOLLING=true -v "$(pwd)\src:/app/src:ro" -d -p 3000:3000--name page fw-landingpage
```
