import os
import pandas as pd

def run_pipeline():
    df = pd.DataFrame(
        {
            'A':[1,2,3],
            'B':[1,2,3]
        }
    )
    print(df)
    print(os.getenv('TEST'))

def test():
    print('hello')