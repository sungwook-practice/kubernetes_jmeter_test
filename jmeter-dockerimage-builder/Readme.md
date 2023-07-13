# 개요
* jmeter 도커이미지 생성 스크립트

# 준비
* 인터넷이 연결된 환경

# base image 생성
```bash
# docker image 생성
make build

# docker image 확인
docker images | grep jmeter
```

# 참고자료
* https://github.com/Kartik-1611/Jmeter_on_GKE/tree/master/Dockerfiles/jmeter-base