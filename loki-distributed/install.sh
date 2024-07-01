#helm install loki grafana/loki-distributed -f values.yaml -n loki --debug
helm upgrade --install loki grafana/loki-distributed -f values.yaml -n loki --debug
