# react-docker-finwatchlandingpage

## DOCKER basics

### Opearations

Runs all command in Dockerfile and create an image. "." is the target directory

```
docker build -t react-image .
```

run an image:

```
docker run run command:
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

bind mount: Sync specified folders inside the docker container

```
docker run -v dirlocaldirectory:containerdirectory - d- p 3000:3000 --name react-app react-image
```
