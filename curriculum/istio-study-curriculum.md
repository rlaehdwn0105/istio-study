# Istio Study Curriculum

작성일: 2026-04-14

이 커리큘럼은 공개된 Notion 스터디 페이지와 참여자 블로그 정리 패턴, 최신 Istio 공식 문서를 함께 반영해 재구성했다.

## 버전 기준

- 과거 스터디 실습 기준: `kind 1.23.17`, `Istio 1.17.8`
- 현재 학습 권장 기준: 최신 공식 문서 기준의 지원 릴리스 확인 후 진행
- 주의: 오래된 블로그 예제는 필드와 동작 차이가 있을 수 있음

## 9주 커리큘럼

### 1주차: Istio 소개, 첫걸음

- Service Mesh 개념
- Istio control plane / data plane
- sidecar 주입
- Bookinfo 배포
- 기본 트래픽 흐름 확인

### 2주차: Envoy, Istio Gateway

- Envoy 역할과 구성
- Ingress Gateway
- Gateway API와 기존 Istio Gateway 비교
- 외부 진입 트래픽 라우팅

### 3주차: Traffic Control, Resilience

- VirtualService
- DestinationRule
- weighted routing
- mirroring
- timeout / retry
- circuit breaking
- egress / ServiceEntry

### 4주차: Observability

- Prometheus
- Grafana
- Kiali
- tracing
- 표준 메트릭과 커스텀 메트릭

### 5주차: Security

- mTLS
- SPIFFE 기반 워크로드 아이덴티티
- JWT 인증
- AuthorizationPolicy
- ingress 보안

### 6주차: 운영, 튜닝

- `istioctl analyze`
- `istioctl proxy-config`
- xDS 반영 확인
- 설정 충돌 디버깅
- control plane 성능 최적화

### 7주차: 스케일링, 데이터 플레인 확장

- control plane scaling
- revision 기반 업그레이드
- 대규모 운영 고려사항
- data plane 확장 개념

### 8주차: VM Support, Istio Traffic Flow

- VM workload 연계
- Envoy와 iptables 흐름
- 패킷 리다이렉션
- 클러스터 내부/외부 트래픽 경로 이해

### 9주차: Ambient Mesh

- ambient mode 개념
- ztunnel
- waypoint proxy
- HBONE
- sidecar와 ambient 비교

## 권장 학습 전략

- 1~6주차는 sidecar mode 중심으로 먼저 학습
- 7~8주차는 운영과 네트워크 흐름을 구조적으로 이해
- 9주차에서 ambient mode를 별도로 정리

## 다음에 이어서 할 때

- 이 파일을 기준으로 현재 주차를 업데이트
- 실습 YAML은 별도 디렉터리에 정리
- 공식 문서 기준 차이점은 주차별 노트로 보강
