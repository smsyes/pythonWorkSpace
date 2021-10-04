from pymel.core import *
import json
import os

def jsonImport(jsonName):
    currentDir = os.path.dirname(__file__)
    filePath = os.path.join(currentDir, jsonName)
    with open(filePath) as f:
        data_ = json.load(f)
    return data_

