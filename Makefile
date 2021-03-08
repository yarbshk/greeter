TAG = 1.0.0
USERNAME = yarbshk

build:
	docker build -t $(USERNAME)/greeter:$(TAG) .

run:
	docker run --rm -p 5000:5000 $(USERNAME)/greeter

push: build
	docker login -u $(USERNAME)
	docker push $(USERNAME)/greeter:$(TAG)
