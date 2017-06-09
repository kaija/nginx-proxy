
IMAGE=nginx-proxy
TAG=latest

.PHONY: build test debug

all: build
build:
	docker build . -f Dockerfile -t ${IMAGE}:${TAG}

debug:
	docker run -it -p 80:80 ${IMAGE}:${TAG} bash

test:
	docker run -p 80:80 ${IMAGE}:${TAG}
