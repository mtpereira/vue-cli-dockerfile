VERSION = $(shell cat Dockerfile | awk '/VUECLI_VERSION=/ { split($$0, a, "=") ; print a[2]}')
IMAGE_NAME = vue-cli
IMAGE_TAG = $(VERSION)
IMAGE_REPO = docker.io/mtpereira
GIT_TAG = v$(VERSION)

.PHONY: build run push release clean

build: Dockerfile
		docker build --rm --tag $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_TAG) -f Dockerfile .

run: build
		docker run --rm $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_TAG)

push: run
		docker push $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_TAG)

release: push
		git tag $(GIT_TAG) && git push && git push --tag

clean:
		docker rmi $(IMAGE_REPO)/$(IMAGE_NAME):$(IMAGE_TAG)
