import sys
import os
import _path


def mRigRun():
    _path.path_()
    from ui.convert import mRigTool
    try:
        from imp import *
    except:
        pass
    reload(mRigTool)
    mRigTool.runWin()