import sys
import os
import _path


def mRigRun():
    _path.path_()
    from ui.convert import mRigTool
    reload(mRigTool)
    mRigTool.runWin()