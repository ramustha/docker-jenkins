#!/bin/bash
docker run --name jenkins -p 8086:8080 -v /var/jenkins_home myjenkins
