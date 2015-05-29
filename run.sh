#!/bin/bash
docker run --name myjenkins -p 8200:8080 -v /var/jenkins_home myjenkins
