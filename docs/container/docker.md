# Docker

*Last updated on: 6 June, 2020*  
*Compiled by: [Evan Tay](https://evantay.com/)*

In this section you will find my notes on using Docker for the deployment of Git projects.

## Useful Docker commands

### Viewing logs

**Typical command:**

``` bash
docker logs [CONTAINER_ID]
```

**Follow log output for a specified duration:**

``` bash
docker logs -f --until=[TIME]
```

TIME can be a TIMESTAMP or relative (e.g. '10m' or '5s')

!!! tip
  You do not have to write out the `CONTAINER_ID` in full. The partial `CONTAINER_ID` specified need only uniquely identify the container. Given a container 'aa151b912448' and 'aa153cd14238', `docker logs aa15` will not work, but `docker logs aa151` will.

## Docker and Github

### Deploy script
This script assumes that the working directory contains a `.git` directory, `Dockerfile` and `package.json`. A `.gitignore` and a `.dockerignore` file may be useful too. It is also assumed that the project dependencies have been installed using `npm install`.

**deploy.sh**
``` bash
IMAGE_NAME=""
VERSION="" # Can be left blank
CONTAINER_NAME=""
CONTAINER_PORT="" # To be mapped to HOST_PORT
HOST_PORT="" # The port clients will access

docker stop $CONTAINER_NAME # Stop the running container
docker system prune -af # Removes the container and all unused images
git pull origin master # Pulls latest source files and image
docker build -t $IMAGE_NAME .
docker run --name $CONTAINER_NAME -p $CONTAINER_PORT:$HOST_PORT -d $IMAGE_NAME:$VERSION
```

Before the script can be used, replace the following placeholders:

* `IMAGE_NAME` : The name of your image.
* `VERSION` : The version of your image. Can be left blank.
* `CONTAINER_NAME` : The desired name of your container.
* `CONTAINER_PORT` : The port of your container which your application is running on.
* `HOST_PORT` : The host port your container port will be mapped to. This is the port that is exposed on the host system.

## Resources
* [How To Build a Node.js Application with Docker](https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker#step-4-%E2%80%94-using-a-repository-to-work-with-images)
* [docker logs](https://docs.docker.com/engine/reference/commandline/logs/)
