.PHONY: build
build:
	docker build -t demo .

.PHONY: start
start:
	docker run --rm -p 3000:3000 demo