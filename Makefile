build:
	docker build -t greeter .

run:
	docker run -p 5000:5000 greeter