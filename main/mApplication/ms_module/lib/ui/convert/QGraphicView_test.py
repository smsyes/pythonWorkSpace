# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
toolName

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210430

:Example:
Pakage is toolName.pyc

import toolName as tool_
tool_.run()

============================================================================"""
#
# when start coding 3 empty lines.
#
import maya.OpenMayaUI as omui
import maya.OpenMaya as om
from pymel import util
from pymel.core import datatypes, nodetypes
from pymel.core import *
import math
import os
import sys

try:
  from PySide2.QtCore import * 
  from PySide2.QtGui import * 
  from PySide2.QtWidgets import *
  from PySide2 import __version__
  from shiboken2 import wrapInstance 
except ImportError:
  from PySide.QtCore import * 
  from PySide.QtGui import * 
  from PySide import __version__
  from shiboken import wrapInstance
  
class Window(QMainWindow):
    def __init__(self, *args, **kwargs):
        super(Window, self).__init__(*args, **kwargs)
        
        self.setWindowTitle("Pyside2 QGraphic View")
        self.setGeometry(300,200,640,520)
        
        self.create_ui()
        
        self.show()
        
    def create_ui(self):
        scene = QGraphicsScene(self)
        
        greenBrush = QBrush(Qt.green)
        blueBrush = QBrush(Qt.blue)
        
        blackPen = QPen(Qt.black)
        blackPen.setWidth(1)
        
        ellipse = scene.addEllipse(10,10, 10,10, blackPen, greenBrush)
        
        rect = scene.addRect(-100,-100, 10,10, blackPen, blueBrush)
        
        
        ellipse.setFlag(QGraphicsItem.ItemIsMovable)
        rect.setFlag(QGraphicsItem.ItemIsMovable)
        
        self.view = QGraphicsView(scene, self)
        self.view.setGeometry(0,0,640,520)
        
        
def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = Window(parent=maya_main_window())
    MainWindow.show()
    

runWin()        
        
        
        
        




















 