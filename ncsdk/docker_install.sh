#!/bin/sh
echo "Build base image with prequisites installed"
docker build -t ncsdk/base:build -f ./extras/docker/Dockerfile_base .

echo "Install tensorflow-1.9.0"
docker build -t ncsdk/base:tensorflow -f ./extras/docker/Dockerfile_base_tensorflow .

echo "Install ncsdk"
docker build -t ncsdk/base:final -f ./extras/docker/Dockerfile_base_final .
