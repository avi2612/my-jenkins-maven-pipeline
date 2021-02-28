#! /bin/bash

echo "***************************"
echo "********* Building JAR **************"
docker run --rm -v $PWD/java-app:/app -v $pwd/maven-data:/root/.m2 -w /app maven:3-alpine "$@"
