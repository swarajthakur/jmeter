#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
IMAGE="justb4/jmeter:3.3"

# Finally run
docker stop ${NAME} > /dev/null 2>&1
docker rm ${NAME} > /dev/null 2>&1
docker run --name ${NAME} -i  $@
