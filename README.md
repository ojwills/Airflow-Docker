Running scripts locally
1. clone repository: git clone <url>
2. navigare to root: cd airflow
3. activate venvL 



Making edits







#Activating virtual enviornemnt
1. python3.7 -m venv venv
2. source venv/bin/activate && set -a; source .env; set +a
3. pip install pip-tools
4. pip-sync
4. pip install -r requirements.txt

#Activating virtual environment
1. source venv/bin/activate && set -a; source .env; set +a
2. add an alias; open ~/.zhsrc; add line alias dwh="source venv/bin/activate && set -a; source .env; set +a"; source ~/.zhsrc;
3. activate with dwh
4. pip install pip-tools

#Adding new packages
1. Add package name to requirements.in 
2. Update requirements.txt with pip-compile
3. Install dependencies with pip-sync

#Running scripts (locally)
1. python -m path.to.folder

#Running Airflow

*Initialisation (first run only when setting up DB)*
1. Set ENABLED=True in initdb service of docker-compose.yml
2. Run docker-compose run initdb 

*Starting servcies*
1. As process: docker-compose up --build 
2. As daemon: docker-compose up -d --build

#Running tests
1. All tests: python -m pytest 
2. All unit tests: python -m pytest -v -k "not integration_test"
3. All integration tests: python -m pytest v -k "integration_test"
4. Tests in a directory: python -m pytest directory/

