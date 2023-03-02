IMAGE_NAME:=knetkit
IMAGE_TAG:=$(shell cat VERSION)
IMAGE:=$(DOCKERHUB_USER)/$(IMAGE_NAME):$(IMAGE_TAG)

build: check-env
	docker build -t $(IMAGE) .

login: check-env
	docker login -u $(DOCKERHUB_USER)

publish: check-env
	docker push $(IMAGE)

check-env:
ifndef DOCKERHUB_USER
	$(error DOCKERHUB_USER is undefined)
endif