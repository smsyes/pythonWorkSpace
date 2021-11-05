import sys
import os

def path_(dir_=None):
    currentDir = os.path.dirname(__file__)
    if dir_:
        currentDir = os.path.join(currentDir, dir_)
    if not currentDir in sys.path:
        sys.path.append(currentDir)
   
    return currentDir