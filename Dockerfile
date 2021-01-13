FROM apache/airflow:latest
USER root

ENV VIRTUAL_ENV=/opt/venv
ENV PYTHONPATH="$VIRTUAL_ENV/bin"
RUN python -m venv $VIRTUAL_ENV

#COPY ./airflow/airflow.cfg /usr/local/airflow/airflow.cfg
#COPY ./airflow/unittests.cfg /usr/local/airflow/unittests.cfg
RUN pip install pip-tools
COPY requirements.in .
RUN pip-compile
RUN pip-sync
