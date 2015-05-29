#!/bin/bash
docker run --name myjenkins -p 8000:8080 -v /var/jenkins_home myjenkins
