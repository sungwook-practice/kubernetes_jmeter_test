build-base:
	docker build -t jmeter:base -f base.Dockerfile .

build-controller:
	docker build -t jmeter:controller -f base.Dockerfile .

build-worker:
	docker build -t jmeter:worker -f base.Dockerfile .

clean:
	docker rmi jmeter:base jmeter:server jmeter:worker

build: build-base build-controller build-worker
