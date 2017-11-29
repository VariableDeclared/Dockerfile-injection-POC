# Dockerfile-injection-POC

Dockerfile code injection proof of concept, a demonstration of injecting code which runs on the child

# Build

Run:

	./build.sh

# To run

## The child

	docker run -it --rm dirty_docker_container:latest

## The parent

	docker run -it --rm injection_poc:latest
