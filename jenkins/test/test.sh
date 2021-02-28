#! /bin/bash

echo "***************************"
echo "********* testing the code **************"
WORKSPACE="/home/ubuntu/avinash/jenkins_setup/pipeline"
docker run --rm -v $WORKSPACE/java-app:/app -v $WORKSPACE/maven-data:/root/.m2 -w /app maven:3-alpine "$@"
