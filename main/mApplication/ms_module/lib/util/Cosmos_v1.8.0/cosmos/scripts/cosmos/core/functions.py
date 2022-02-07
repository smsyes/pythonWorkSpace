from __future__ import print_function, unicode_literals

import logging
import sys, os

def installLogger(name, file=None):
    # Define the logging file
    logger = logging.getLogger(name)
    # Disable printing in console
    logger.propagate = False
    logger.setLevel(logging.DEBUG)
    if file != None:
        # Create a file handler
        handler = logging.FileHandler(file)
        handler.setLevel(logging.DEBUG)
        # Create a logging format
        formatter = logging.Formatter('%(asctime)s : %(name)s : %(levelname)s - %(message)s')
        handler.setFormatter(formatter)
        logger.addHandler(handler)

    logging.basicConfig(stream=sys.stdout, level=logging.INFO)

    sys.excepthook = exception_hook

    return logger

def exception_hook(exc_type, exc_value, exc_traceback):
    logging.error("Uncaught exception", exc_info=(exc_type, exc_value, exc_traceback))



def fix_path_endings(path_list):
    '''Takes a input list of paths and fix the endings of them'''
    new_paths = []
    for path in path_list:
        if not path.endswith(os.sep):
            path += os.sep
        new_paths.append(path)

    return new_paths