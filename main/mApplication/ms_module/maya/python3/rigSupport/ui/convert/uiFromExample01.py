# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'FKIKSnapBakeToolvHwwBo.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################
import maya.OpenMayaUI as omui
from PySide2 import __version__
from shiboken2 import wrapInstance

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_Form(QWidget,object):
    def __init__(self, *args, **kwargs):
        super(Ui_Form, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.setupUi(self)
        
    # def setupUi(self, Form):
    #
    #
    #



def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = Ui_Form(parent=maya_main_window())
    MainWindow.show()

runWin()