from pymel.core import *

def rename_(object_):
    for i in object_:
        i.rename('test')

sel_ = ls(sl=1,r=1,fl=1)

undoInfo(openChunk=True)
try:
    rename_(sel_)
finally:
    undoInfo(closeChunk=True)
