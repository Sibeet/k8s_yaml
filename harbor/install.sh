helm repo add harbor https://helm.goharbor.io
helm upgrade --install harbor harbor/harbor -f values.yaml -n harbor --debug
