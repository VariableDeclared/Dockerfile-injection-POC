#!/bin/bash

docker build -t injection-poc:latest -f Dockerfile.parent .
docker build -t dirty_docker_container:latest -f Dockerfile.child .
