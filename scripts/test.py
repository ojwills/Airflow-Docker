import pandas as pd
import os

def run_pipeline():
    print(os.getenv('TEST'))
    df = pd.DataFrame(
        {
            'A':[1,2,3,4,5],
            'B':['a','b','c','d','e']
        }
    )
    print(df)
    return df

if __name__ == "__main__":
    df = run_pipeline()

