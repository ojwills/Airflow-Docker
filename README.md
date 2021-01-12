#Activating virtual enviornemnt
1. cd scripts 
2. python3.7 -m venv venv
3. source venv/bin/activate && set -a; source .env; set +a
4. pip install pip-tools 5.5.0
5. pip install requirements.txt

#Activating virtual environment
1. cd scripts
2. source venv/bin/activate && set -a; source .env; set +a

#Adding new packages
1. Add package name to requirements.in 
2. Update requirements.txt with pip-compile
3. Install dependencies with pip-sync
