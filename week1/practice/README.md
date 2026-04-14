# Week 1 Practice

## 목적

1주차 실습은 `메시에 첫 애플리케이션 올리기`까지 가는 것이 목적이다. 세부 튜닝보다 설치와 기본 흐름 이해에 집중한다.

## 포함 파일

- `kind-config.yaml`
- `install-istio-demo.sh`
- `bookinfo.yaml`
- `bookinfo-gateway.yaml`
- `destination-rule-all.yaml`

## 권장 순서

1. kind 클러스터 생성
2. `istioctl` 설치
3. demo 프로파일로 Istio 설치
4. Bookinfo 배포
5. sidecar injection 확인
6. gateway 리소스 적용

## 주의

- 블로그 글은 1.17.x 기준 예제가 포함되어 있다
- 실제 실행 전에는 현재 사용하는 Istio 릴리스와 문서 기준을 다시 확인하는 것이 좋다
