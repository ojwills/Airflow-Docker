FROM apache/airflow:1.10.14-python3.7
#USER root
COPY ./requirements.txt ./
RUN pip install -r requirements.txt



# RUN python3 -m venv venv
# RUN venv/bin/activate 

# #Create venv
# #RUN python3 -m venv /opt/venv
# # Install dependencies:
# COPY requirements.in .
# #RUN . /opt/venv/bin/activate 
# RUN pip install --upgrade pip
# RUN pip install pip-tools
# RUN pip-compile && pip-sync

# # Run the application:
# COPY myapp.py .
# CMD . /opt/venv/bin/activate && exec python myapp.py

# WORKDIR /opt

# ENV VIRTUAL_ENV=/opt/venv
# ENV PYTHONPATH="$VIRTUAL_ENV/bin"
# RUN python3.7 -m venv $VIRTUAL_ENV



# #COPY ./airflow/airflow.cfg /usr/local/airflow/airflow.cfg
# #COPY ./airflow/unittests.cfg /usr/local/airflow/unittests.cfg
# # RUN pip install pip-tools
# COPY requirements.txt 
# # RUN pip-compile
# # RUN pip-sync
# RUN pip install requirements.txt