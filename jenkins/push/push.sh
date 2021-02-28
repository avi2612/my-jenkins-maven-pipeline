#! /bin/bash

echo "****************************"
echo "****** pushing images ******"
IMAGE="maven-project"
docker login -u lazyavinash -p $PASS
echo "Tagging image"
docker tag $IMAGE:$BUILD_TAG  lazyavinash/$IMAGE:$BUILD_TAG
docker push lazyavinash/$IMAGE:$BUILD_TAG
