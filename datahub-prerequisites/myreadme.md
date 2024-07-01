# 1. add secrets
	- kubectl create secret generic mysql-secrets --from-literal=mysql-root-password=datahub --namespace datahub
	- kubectl create secret generic neo4j-secrets --from-literal=neo4j-password=datahub --namespace datahub
# 2. add helm repo
	- helm repo add datahub https://helm.datahubproject.io/
# 3. add helm install prerequisites
	- helm install prerequisites datahub/datahub-prerequisites --values values.yaml --namespace datahub

# 4. Result
NAME                                               READY   STATUS      RESTARTS   AGE
elasticsearch-master-0                             1/1     Running     0          62m
elasticsearch-master-1                             1/1     Running     0          62m
elasticsearch-master-2                             1/1     Running     0          62m
prerequisites-cp-schema-registry-cf79bfccf-kvjtv   2/2     Running     1          63m
prerequisites-kafka-0                              1/1     Running     2          62m
prerequisites-mysql-0                              1/1     Running     1          62m
prerequisites-neo4j-community-0                    1/1     Running     0          52m
prerequisites-zookeeper-0                          1/1     Running     0          62m
