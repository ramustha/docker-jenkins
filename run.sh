#!/bin/sh
#docker run -it --privileged -d docker:dind --name jenkins-last-changes -p 8080:8080 -v /var/jenkins_home rmpestano/jenkins-last-changes

docker run -it --name jenkins-last-changes -p 8080:8080 -v "$HOME/.m2":/root/.m2 -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -v /var/jenkins_home rmpestano/jenkins-last-changes