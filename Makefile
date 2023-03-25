arm64:
	docker build --network host -f Dockerfile.arm64 --no-cache -t guoqiao/chatbot:arm64 .

push:
	docker push guoqiao/chatbot:arm64
