# 5. install datahub
	- helm install datahub datahub/datahub --values values.yaml --namespace datahub
# 6. Result
NAME                                               READY   STATUS      RESTARTS   AGE
datahub-datahub-frontend-84c58df9f7-5bgwx          1/1     Running     0          4m2s
datahub-datahub-gms-58b676f77c-c6pfx               1/1     Running     0          4m2s
datahub-datahub-mae-consumer-7b98bf65d-tjbwx       1/1     Running     0          4m3s
datahub-datahub-mce-consumer-8c57d8587-vjv9m       1/1     Running     0          4m2s
datahub-elasticsearch-setup-job-8dz6b              0/1     Completed   0          4m50s
datahub-kafka-setup-job-6blcj                      0/1     Completed   0          4m40s
datahub-mysql-setup-job-b57kc                      0/1     Completed   0          4m7s
elasticsearch-master-0                             1/1     Running     0          97m
elasticsearch-master-1                             1/1     Running     0          97m
elasticsearch-master-2                             1/1     Running     0          97m
prerequisites-cp-schema-registry-cf79bfccf-kvjtv   2/2     Running     1          99m
prerequisites-kafka-0                              1/1     Running     2          97m
prerequisites-mysql-0                              1/1     Running     1          97m
prerequisites-neo4j-community-0                    1/1     Running     0          88m
prerequisites-zookeeper-0                          1/1     Running     0          97m
