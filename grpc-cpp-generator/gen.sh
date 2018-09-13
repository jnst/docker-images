#! /bin/bash

IMAGE_NAME=grpc-cpp-generator
CONTAINER_NAME=codegen-cpp
SRC_DIR=/workspace/codegen
DEST_DIR=./codegen

cd $(dirname $0)

# build docker image
docker build -t ${IMAGE_NAME} .

# generate cpp code in docker
docker run --name ${CONTAINER_NAME} ${IMAGE_NAME}

# copy cpp code to local directory
container_id=$(docker ps --last 1 --format "{{.ID}}")
docker cp ${container_id}:${SRC_DIR} ${DEST_DIR}

# cleanup docker container
docker rm ${CONTAINER_NAME}
