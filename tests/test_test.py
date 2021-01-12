import pytest
import pandas as pd

from scripts.test import run_pipeline

def test_run_pipeline():
    df_expected = pd.DataFrame({
       'A':[1,2,3,4,5], 
       'B':['a','b','c','d','e']
    })
    df_ouptut = run_pipeline()
    assert df_output == df_expected
