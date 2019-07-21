all:
	docker build . -t xsgordon/bip
	docker push xsgordon/bip
