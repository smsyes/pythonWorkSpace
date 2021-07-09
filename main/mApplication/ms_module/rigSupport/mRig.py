import sys
import os


def path_():
    currentDir = os.path.dirname(os.path.dirname(__file__))
    module_path = os.path.join(currentDir, 'rigSupport')

    print module_path
    return module_path