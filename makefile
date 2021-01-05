.PHONY: help
help: ## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | column -c2 -t -s :

run: ## Run szulcmaciej/python_cpp_comparison container with this repo mounted in /app
	docker run -itv ~/python_cpp_comparison:/app szulcmaciej/python_cpp_comparison bash

pull-docker-image: ## Pull szulcmaciej/python_cpp_comparison image from DockerHub
	docker pull szulcmaciej/python_cpp_comparison

build-image: ## Build docker image as specified in Dockerfile
	docker build -t szulcmaciej/python_cpp_comparison .