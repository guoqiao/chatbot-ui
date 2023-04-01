REV := $(shell git rev-parse HEAD | cut -c 1-6)
TAG := $(shell date +%y%m%d)-$(REV)

arm64:
	docker build --network host -f Dockerfile.arm64 --no-cache -t guoqiao/chatbot:latest -t guoqiao/chatbot:$(TAG).

push:
	docker push guoqiao/chatbot:latest
	docker push guoqiao/chatbot:$(TAG)
