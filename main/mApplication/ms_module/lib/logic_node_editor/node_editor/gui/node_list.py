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
from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance 

from path_item import PathItem
from palette import palette
import fitPageUI as fitPage

class NodeList(QWidget):
    def __init__(self, parent=None):
        super(NodeList, self).__init__(parent)
        self.ui = fitPage.Ui_Form()
        self.ui.setupUi(self)

        self.PI = PathItem()
        
        self.addItem(self.PI.tempsName, self.ui.temp_listWidget)
        self.addItem(self.PI.partsName, self.ui.parts_listWidget)
        

    def contextMenuEvent(self, event):
        menu = QMenu(self)
        pos = event.pos()

        # actions
        delete_node = QAction("Delete Node")
        edit_node = QAction("Edit Node")
        menu.addAction(delete_node)

        action = menu.exec_(self.mapToGlobal(pos))

        if action == delete_node:
            item_name = self.selectedItems()[0].text()

            if item_name not in ["And", "Not", "Input", "Output"]:
                print("delete node: {item_name}")
            else:
                print("Cannot delete default nodes")

        elif action == edit_node:
            print("editing node")

            # confirm to open in the editor replacing what is existing

    def mousePressEvent(self, event):
        item = self.itemAt(event.pos())
        name = item.text()

        drag = QDrag(self)
        mime_data = QMimeData()

        mime_data.setText(name)
        drag.setMimeData(mime_data)
        drag.exec_()

        super(NodeList, self).mousePressEvent(event)

    def addItem(self, item_, parent_):
        return [parent_.addItem(i) for i in item_]



    
