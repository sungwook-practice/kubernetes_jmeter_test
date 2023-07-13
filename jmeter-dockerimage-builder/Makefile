build-base:
	docker build -t jmeter:base -f base.Dockerfile .

build-controller:
	docker build -t jmeter:controller -f base.Dockerfile .

build-worker:
	docker build -t jmeter:client -f base.Dockerfile .

clean:
	docker rmi jmeter:base jmeter:server jmeter:client

build: build-base build-controller build-worker
