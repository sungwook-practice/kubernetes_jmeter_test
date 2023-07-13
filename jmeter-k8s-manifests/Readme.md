# 개요
* 쿠버네티스용 jmeter cluster manifests

# 전제조건
* 쿠버네티스 클러스터

# 구축 과정
* 1. jmeter docker image 생성
```bash
cd ../jmeter-dockerfile
make build
```

* (옵션). kind cluster를 사용할 시 jmeter docker image를 kind cluster로 복사
```bash
kind load docker-image jmeter:controller --name {kind cluster name}
kind load docker-image jmeter:worker --name {kind cluster name}
```

* 2. manifests 배포
```bash
kubectl -n default apply  -f .
```