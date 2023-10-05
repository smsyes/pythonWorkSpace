# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
CNTManager

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20220114

:Example:
Pakage is CNTManager2.pyc

from rigSupport.ui.convert import CNTManager2
try:
    from imp import *
except:
    pass
reload(CNTManager2)

============================================================================"""
#
# when start coding 3 empty lines.
#
import maya.OpenMayaUI as omui
from pymel.core import *
import pymel.core.datatypes as dt

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance

import ui_customRiggingTool
try:
    from imp import *
except:
    pass
reload(ui_customRiggingTool)

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = ui_customRiggingTool.Ui_Form()
        self.ui.setupUi(self)


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)
    

def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()
runWin()