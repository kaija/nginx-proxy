
IMAGE=nginx-proxy
TAG=latest

.PHONY: build tag push test debug

all: build
build:
	docker build . -f Dockerfile -t ${IMAGE}:${TAG}

debug:
	docker run -it -p 80:80 ${IMAGE}:${TAG} bash

test:
	docker run -p 80:80 ${IMAGE}:${TAG}

tag:
	docker tag ${IMAGE}:${TAG} kaija/nginx-proxy:${TAG}

push:
	docker push kaija/nginx-proxy:${TAG}
