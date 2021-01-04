download-docker-image: 
	docker pull szulcmaciej/python_cpp_comparison

build-image: ## builds docker image
	docker build -t szulcmaciej/python_cpp_comparison .