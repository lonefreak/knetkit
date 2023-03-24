IMAGE_NAME:=knetkit
IMAGE_TAG:=$(shell cat VERSION)
IMAGE_FLAVOR:=alpine
IMAGE:=$(DOCKERHUB_USER)/$(IMAGE_NAME):$(IMAGE_TAG)-$(IMAGE_FLAVOR)

build: check-env
	docker build -f Dockerfile-$(IMAGE_FLAVOR) -t $(IMAGE) .

login: check-env
	docker login -u $(DOCKERHUB_USER)

publish: check-env
	docker push $(IMAGE)

check-env:
ifndef DOCKERHUB_USER
	$(error DOCKERHUB_USER is undefined)
endif