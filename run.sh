#!/bin/bash
docker run --name myjenkins -p 8280:8080 -v /var/jenkins_home myjenkins
