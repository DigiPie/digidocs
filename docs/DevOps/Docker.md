# DevOps / Docker
_Last updated on 6 Feb 19_

In this section you will find my notes on using Docker for the deployment of Git projects.

## Docker and Github

### Deploy script
This script assumes that the working directory contains a `.git` directory, `Dockerfile` and `package.json`. A `.gitignore` and a `.dockerignore` file may be useful too. It is also assumed that the project dependencies have been installed using `npm install`.

**deploy.sh**
```bash
IMAGE_NAME="<IMAGE>"
CONTAINER_NAME="<NAME>"
CONTAINER_PORT="<PORT_1>" # To be mapped to HOST_PORT
HOST_PORT="<PORT_2>" # The port clients will access

docker stop $CONTAINER_NAME
docker system prune -af # Removes the container and all unused images
git pull origin master # Pulls latest source files and image
docker build -t $IMAGE_NAME .
docker run --name $CONTAINER_NAME -p $CONTAINER_PORT:$HOST_PORT -d $IMAGE_NAME
```

Before the script can be used, replace the following placeholders:

* `<IMAGE>` : The name of your image.
* `<NAME>` : The desired name of your container.
* `<PORT_1>` : The port of your container which your application is running on.
* `<PORT_2>` : The host port your container port will be mapped to.

### Resources
* [How To Build a Node.js Application with Docker](https://www.digitalocean.com/community/tutorials/how-to-build-a-node-js-application-with-docker#step-4-%E2%80%94-using-a-repository-to-work-with-images)
