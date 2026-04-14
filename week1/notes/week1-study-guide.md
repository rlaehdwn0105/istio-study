# Week 1 Study Guide

## 목표

1주차를 끝내면 아래를 설명할 수 있어야 한다.

- 마이크로서비스 환경에서 왜 Service Mesh가 필요해졌는지
- Istio의 control plane, data plane, sidecar injection 개념
- Envoy가 요청 경로에서 수행하는 역할
- Bookinfo를 배포하고 메시에 편입하는 기본 절차
- 이후 주차의 traffic management, observability, security가 왜 중요한지

## 추천 학습 순서

### 1. 배경 이해

먼저 `Service Mesh가 왜 필요한가`부터 본다. 이 단계에서 중요한 건 Istio 기능 이름을 외우는 것이 아니라, 애플리케이션 코드에 네트워크 로직이 섞일 때 어떤 문제가 생기는지를 이해하는 것이다.

중점 포인트:

- 성능, 신뢰성, 보안, 배포 리스크가 서비스별로 제각각 구현될 때 운영 복잡도가 올라간다
- 재시도, 타임아웃, 로드 밸런싱, 인증 같은 공통 네트워크 기능을 애플리케이션 대신 프록시 계층이 맡을 수 있다
- Service Mesh는 개발자가 아닌 플랫폼이 네트워크 정책을 관리할 수 있게 해준다

### 2. Istio 아키텍처 이해

그 다음 `Istio가 어떤 구조로 이 문제를 해결하는가`를 본다.

중점 포인트:

- data plane: 주로 Envoy 프록시가 요청을 중개한다
- control plane: Istiod가 프록시 설정을 배포한다
- sidecar injection: 각 워크로드 옆에 프록시를 붙이는 방식이다
- Kubernetes 리소스 변경이 xDS 설정으로 프록시에 반영된다는 큰 흐름을 잡아야 한다

### 3. 실습 환경 이해

실습은 가볍게 시작하는 편이 좋다. 1주차에서는 클러스터를 꾸미는 것보다 `Istio가 붙은 뒤 어떤 경험이 생기는가`를 보는 데 집중한다.

중점 포인트:

- kind 또는 로컬 Kubernetes 준비
- `istioctl` 설치
- `istioctl install`로 control plane 설치
- 샘플 애플리케이션 배포
- 사이드카 주입 여부 확인

### 4. 첫 애플리케이션 배포

Bookinfo는 이후 여러 주차의 공통 예제로 재사용된다. 1주차에서 최소한 아래는 확인해야 한다.

- productpage, details, reviews, ratings 관계
- 사이드카 주입 전후의 파드 구성 차이
- Ingress Gateway를 붙였을 때 외부 진입 경로

### 5. 예고편 수준으로 관측성, 복원력, 라우팅 맛보기

1주차에 이미 observability, resiliency, routing이 살짝 나온다. 다만 깊게 파고들기보다 `Istio가 다음 주차들에서 무엇을 해줄지` 정도만 맛보면 충분하다.

## 하루 단위 학습 플랜

### Day 1

- Service Mesh 배경
- 마이크로서비스 운영 문제
- Envoy가 필요한 이유

완료 기준:

- 애플리케이션이 직접 재시도, 로깅, 보안을 구현할 때 왜 유지보수가 어려운지 설명 가능

### Day 2

- Istio 구성요소
- sidecar 패턴
- Istiod 역할

완료 기준:

- control plane과 data plane의 차이를 설명 가능

### Day 3

- 실습 환경 준비
- `istioctl` 설치
- 클러스터 준비

완료 기준:

- 로컬 환경에서 Istio 설치 전제 조건을 점검 가능

### Day 4

- Bookinfo 배포
- sidecar injection 확인
- 게이트웨이 노출

완료 기준:

- Bookinfo에 외부에서 접속 가능

### Day 5

- 메트릭, 라우팅, 복원력 예고편 확인
- 다음 주차 준비

완료 기준:

- 2주차와 3주차에서 왜 Envoy, Gateway, Traffic Control을 배우는지 연결 가능

## 반드시 이해해야 하는 개념

- Service Mesh
- Sidecar Proxy
- Envoy
- Istiod
- Injection
- Ingress Gateway
- Bookinfo
- Telemetry
- Routing Rule

## 흔한 오해

- Istio는 단순 인그레스 컨트롤러가 아니다
- Envoy는 게이트웨이에만 있는 것이 아니라 sidecar로도 붙는다
- Kubernetes Service만으로 해결 가능한 문제와 Service Mesh가 푸는 문제는 다르다
- 1주차에 보이는 기능이 전부는 아니고, 대부분은 이후 주차에서 본격화된다

## 1주차 종료 체크리스트

- `Service Mesh가 왜 필요한지`를 본인 말로 설명할 수 있다
- `control plane`과 `data plane`을 구분할 수 있다
- `Envoy`와 `Istiod`의 역할을 구분할 수 있다
- `Bookinfo` 구조를 설명할 수 있다
- 사이드카 주입 여부를 `kubectl`로 확인할 수 있다
- Ingress Gateway가 왜 필요한지 설명할 수 있다

## 다음 주로 넘어가기 전 질문

- 트래픽은 Envoy에서 어떤 규칙으로 바뀌는가
- 게이트웨이와 라우팅 규칙은 어디까지 분리해야 하는가
- 사이드카가 많아지면 운영 비용은 어떻게 달라지는가
