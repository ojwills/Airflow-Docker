from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import days_ago

from scripts.test import run_pipeline

default_args = {
    'user':'Ollie',
    'start_date':days_ago(1),
    'email':['owills@c40.org'],
    'email_on_failure': True
}

with DAG('D2020_Dashboard',schedule_interval='0 * * * *',catchup=False,default_args=default_args) as dag:

    t1 = PythonOperator(
            task_id = 'run_pipeline',
            python_callable = run_pipeline
    )

t1