kubectl create secret docker-registry harbor-secret -n airflow \
  --docker-server=172.10.40.178:31130 \
  --docker-username=harbor \
  --docker-password=Okestro2018 \
  --docker-email=dp@okestro.com \
