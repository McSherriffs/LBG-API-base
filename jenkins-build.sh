#Build image
#~!/bin/bash
docker rmi -f $(docker images -q)
docker build -t ${REGISTRY}/${APP_NAME}:${TAG}-${BUILD_NUMBER} .
docker tag ${REGISTRY}/${APP_NAME}:${TAG}-${BUILD_NUMBER} ${REGISTRY}/${APP_NAME}:${TAG}-${BUILD_NUMBER}

# push image
#~!/bin/bash
docker push ${REGISTRY}/${APP_NAME}:${TAG}-${BUILD_NUMBER}
docker push ${REGISTRY}/${APP_NAME}:${TAG}-${BUILD_NUMBER}