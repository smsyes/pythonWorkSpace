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


class NodeList(QListWidget):
    def __init__(self, parent=None):
        super(NodeList, self).__init__(parent)

        self.addItem("Input")
        self.addItem("Output")
        self.addItem("And")
        self.addItem("Not")
        self.addItem("Nor")

        self.setDragEnabled(True)  # enable dragging

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
