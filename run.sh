#!/bin/bash
docker run --name myjenkins -p 8000:8280 -v /var/jenkins_home myjenkins
