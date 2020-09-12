ENV ?=dev
CONTAINER_ID ?= default
PWD ?= default-pwd

docker-build:
	docker build -f Dockerfile.${ENV} .

docker-run:
	docker run -it -p  3000:3000 -v /app/node_modules -v ${PWD}:/app ${CONTAINER_ID}

.phony: docker-build docker-run