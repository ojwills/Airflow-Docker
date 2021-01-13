#Activating virtual enviornemnt
1. python3.7 -m venv venv
2. source venv/bin/activate && set -a; source .env; set +a
3. pip install -r requirements.txt

#Activating virtual environment
2. source venv/bin/activate && set -a; source .env; set +a

#Adding new packages
1. Add package name to requirements.in 
2. Update requirements.txt with pip-compile
3. Install dependencies with pip-sync

#Running tests
1. All tests: python -m pytest 
2. All unit tests: python -m pytest -v -k "not integration_test"
3. All integration tests: python -m pytest v -k "integration_test"
4. Tests in a directory: python -m pytest directory/

