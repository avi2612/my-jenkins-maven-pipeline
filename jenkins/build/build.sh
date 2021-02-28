#! /bin/bash

echo "***** copying the jar file ******"
cp -f java-app/target/*.jar jenkins/build/

echo "*** building docker image *******"
cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache

#echo "**** starting new job *********"
#docker-compose -f docker-compose-build.yml up --force-recreate
