# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
ports can now only have one connection at a time to them

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20210602

## Copyright 2020 Ilgar Lunin, bhowiebkr

============================================================================"""
#
# when start coding 3 empty lines.
#
# import maya.OpenMayaUI as omui

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2.QtOpenGL import *
from PySide2 import __version__
from shiboken2 import wrapInstance 


import logging
import sys
import os

baseDir = os.path.dirname(__file__)
guiDir = os.path.join(baseDir, 'node_editor', 'gui')

if not guiDir in sys.path:
    sys.path.append(guiDir)


from node_widget import NodeWidget
from palette import palette
from node_list import NodeList

logging.basicConfig(level=logging.DEBUG)


class NodeEditor(QMainWindow):
    def __init__(self, *args, **kwargs):
        super(NodeEditor, self).__init__(*args, **kwargs)
        self.settings = None

        icon = QIcon("resources\\app.ico")
        self.setWindowIcon(icon)

        self.setWindowTitle("Custom Node Editor")
        settings = QSettings("NodeEditor", "NodeEditor")

        # Layouts
        main_widget = QWidget()
        main_layout = QHBoxLayout()

        self.node_list = NodeList()
        self.splitter = QSplitter()

        self.setCentralWidget(main_widget)
        main_widget.setLayout(main_layout)

        self.node_widget = NodeWidget(self)
        main_layout.addWidget(self.splitter)
        self.splitter.addWidget(self.node_list)
        self.splitter.addWidget(self.node_widget)

        try:
            self.restoreGeometry(settings.value("geometry"))
            s = settings.value("splitterSize")
            self.splitter.restoreState(s)

        except AttributeError as e:
            logging.warning(
                "Unable to load settings. First time opening the tool?\n" + str(e)
            )

    def closeEvent(self, event):
        self.settings = QSettings("NodeEditor", "NodeEditor")
        self.settings.setValue("geometry", self.saveGeometry())
        self.settings.setValue("splitterSize", self.splitter.saveState())
        QWidget.closeEvent(self, event)

'''
def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = NodeEditor(parent=maya_main_window())
    MainWindow.show()
'''    
if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setWindowIcon(QIcon("resources\\app.ico"))
    app.setPalette(palette)
    launcher = NodeEditor()
    launcher.show()
    app.exec_()
    sys.exit()
