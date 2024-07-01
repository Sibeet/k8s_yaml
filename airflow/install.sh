#helm upgrade --install airflow283 apache-airflow/airflow -f values.yaml --namespace airflow --debug
helm upgrade --install airflow apache-airflow/airflow -f values.yaml --debug -n airflow 
