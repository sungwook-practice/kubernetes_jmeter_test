build-base:
	docker build -t jmeter:base -f base.Dockerfile .

build-controller:
	docker build -t jmeter:controller -f controller.Dockerfile .

build-worker:
	docker build -t jmeter:worker -f worker.Dockerfile .

clean:
	docker rmi jmeter:base jmeter:controller jmeter:worker

build: build-base build-controller build-worker
