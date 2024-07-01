# thanos + prometheus
## monitoring namespace 생성
    - kubectl apply -f tmonitoring-ns.yaml
    - kubectl get namespaces
## 사용자 지정 리소스 정의 생성
    - kubectl create -f prometheus-operator-crds
    - 각 파일에서 group, name 맞추어 주어야 함. 식별자 같음.
    - kubectl get crd
## prometheus operator 배포
    - kubectl apply -R -f prometheus-operator
    - kubectl get pods -n tmonitoring
## pod label list
    - kubectl get pods -n monitoring --show-labels
## 특정 label 로그 확인
    - kubectl logs -l app.kubernetes.io/name=prometheus-operator -n tmonitoring -f
## prometheus 배포
    - kubectl apply -f prometheus
    - kubectl get pods -n tmonitoring
    - watch -t kubectl get pods -n monitoring -> watch는 무슨 명령어???
    - kubectl get pods -n tmonitoring --show-labels
    - kubectl logs -l app.kubernetes.io/name=prometheus -n tmonitoring -f
    - kubectl describe pods prometheus-staging-0 -n tmonitoring
    - delete pod -> 팟 재시작됨.... replicas 수를 변경하면 재시작 안되게 할 수 있다고 하는데 scale 변경이 먹지 않음.
        - kubectl delete pod <pod-name> -n tmonitoring
## port forwarding
    - kubectl get svc -n tmonitoring
    - kubectl port-forward svc/prometheus-operated 9090 -n tmonitoring
## prometheus 서버 접속
    - localhost:9090
## prometheus에 minio추가하기
    - prometheus/5-objectstore.yaml 추가
    - prometheus/3-promethues.yaml에 thanos 추가
## prometheus 재배포 -> thanos sidecar 포함
    - kubectl apply -f prometheus
    - kubectl get pods -n tmonitoring
    - kubectl logs -f prometheus-staging-0 -c thanos-sidecar -f -n tmonitoring
## thanos sidecar 서비스 생성
    - prometheus/6-sidecar-svc.yaml 추가
    - kubectl apply -f prometheus
    - kubectl get pods -n tmonitoring
    - kubectl get svc -n tmonitoring
    - kubectl get endpoints -n tmonitoring
## thanos 배포
    - thanos/0-,1-,2- 추가
    - kubectl apply -f thanos
    - kubectl get pods -n tmonitoring
    - kubectl logs -l app.kubernetes.io/name=querier -n tmonitoring -f
## thanos 서비스 노출
    - kubectl port-forward svc/querier 9090 -n tmonitoring
    - localhost:9090
## objstore에 접근하기 위한 storegateway 생성
    - thanos/3-,4- 추가.
    - 1-에 --store=storegateway.monitoring.svc.cluster.local:10901
## storegateway 배포
    - kubectl apply -f thanos
    - kubectl get pods -n tmonitoring
## 서비스 재노출
    - kubectl port-forward svc/querier 9090 -n tmonitoring
