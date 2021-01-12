COPY ./airflow/scripts/docker-entrypoint.sh /opt/airflow/scripts/docker-entrypoint.sh
RUN chmod +x /opt/airflow/scripts/docker-entrypoint.sh
