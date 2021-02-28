#! /bin/bash

echo maven-project >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i /home/ubuntu/avinash/jenkins_setup/centos7/remote-key /tmp/.auth avi@147.139.33.50:/tmp/.auth
scp -i /home/ubuntu/avinash/jenkins_setup/centos7/remote-key ./jenkins/deploy/publish.sh avi@147.139.33.50:/home/avi/maven/publish.sh
ssh -i /home/ubuntu/avinash/jenkins_setup/centos7/remote-key  avi@147.139.33.50 "/home/avi/maven/publish.sh"

