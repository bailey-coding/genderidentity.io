PWD:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

server:
	docker build -t transfigure .
	docker run --rm --name transfigure -p 3000:3000 -d -v $(PWD):/usr/src/app transfigure
