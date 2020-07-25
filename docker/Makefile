help:
	@cat Makefile

SRC?=$(shell pwd)

IMAGE=julia:1.5.0-buster
CONTAINER_NAME?=$(shell echo "$(IMAGE)" | tr ':' '_')

run:
	docker run -it \
		--rm \
		-v "$(SRC)":/usr/myapp \
		-w /usr/myapp \
		--name "$(CONTAINER_NAME)" \
		"$(IMAGE)"

logs:
	docker logs "$(CONTAINER_NAME)"

ssh:
	docker run --rm -it "$(IMAGE)" /bin/bash

stop:
	docker stop "$(CONTAINER_NAME)"

pull:
	docker pull "$(IMAGE)"

uninstall:
	docker image rm "$(IMAGE)"
