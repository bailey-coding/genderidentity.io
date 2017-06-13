PWD:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

server:
#	docker run --rm --name transfigure-helloworld -v $(PWD):/usr/share/nginx/html:ro -p 80:80 nginx
	docker build -t transfigure .
	docker run -p 3000:3000 -d transfigure
