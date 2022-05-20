#~!/bin/bash

DOCKERHUB_USER=sarahmcneice
APP_NAME=lbg-api-app

#remove any previous images of that name
docker rmi -f ${DOCKERHUB_USER}/${APP_NAME}

# build image
docker build -t ${DOCKERHUB_USER}/${APP_NAME} .

# push to dockerhub
docker push ${DOCKERHUB_USER}/${APP_NAME}

# Stop any previous containers with that name
docker rm -f ${APP_NAME}

# run container from image
docker run  -d --name ${APP_NAME} ${DOCKERHUB_USER}/${APP_NAME}

# removes anything that doesn't need to be there
docker system prune -f

