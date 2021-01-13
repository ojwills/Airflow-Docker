from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.utils.dates import days_ago

from scripts.test import run_pipeline, test

default_args = {
    'user':'Ollie',
    'start_date':days_ago(1),
    'email':['owills@c40.org'],
    'email_on_failure': True
}

with DAG('D2020_Dashboard',schedule_interval='5 * * * *',catchup=False,default_args=default_args, concurrency=1, max_active_runs=1) as dag:

    t1 = PythonOperator(
            task_id = 'test',
            python_callable = test
    )

    t2 = PythonOperator(
            task_id = 'run_pipeline',
            python_callable = run_pipeline
    )

t2