IMAGE_TAG=local/nodecliapp

.PHONY: all
all: .image_build

# Build Docker image
.image_build: Dockerfile app/
	#docker build --no-cache --rm --tag ${IMAGE_TAG} .
	docker build --tag ${IMAGE_TAG} .
	touch .image_build

clean:
	rm -f .image_build
	docker image rm -f ${IMAGE_TAG}
