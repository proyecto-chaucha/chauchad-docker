.PHONY: install run bash

run r:
	docker run -v .:/chauchad:z  -it -p 6432:6432 -p 29000:29000 -p 9051:9051 -t chauchad

install i:
	docker build . -t chauchad

bash b:
	docker run -v .:/chauchad:z  -it --entrypoint "/bin/bash" -p 6432:6432 -p 29000:29000 -p 9051:9051 -t chauchad
