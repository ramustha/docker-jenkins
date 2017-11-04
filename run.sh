#!/bin/sh
docker run -it --name jenkins -p 8080:8080 -v "$HOME/.m2":/root/.m2 -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker --privileged -v ~/.jenkins:/var/jenkins_home rmpestano/jenkins
