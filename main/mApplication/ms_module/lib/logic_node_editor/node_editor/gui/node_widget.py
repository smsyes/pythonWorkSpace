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


from view import View
from node import Node
from node_editor import NodeEditor

# import lorem
# import random


def create_input():
    node = Node()
    node.title = "A"
    node.type_text = "input"
    node.add_port(name="output", is_output=True)
    node.build()
    return node


def create_output():
    node = Node()
    node.title = "A"
    node.type_text = "output"
    node.add_port(name="input", is_output=False)
    node.build()
    return node


def create_and():
    node = Node()
    node.title = "AND"
    node.type_text = "built-in"
    node.add_port(name="input A", is_output=False)
    node.add_port(name="input B", is_output=False)
    node.add_port(name="output", is_output=True)
    node.build()
    return node


def create_not():
    node = Node()
    node.title = "NOT"
    node.type_text = "built-in"
    node.add_port(name="input", is_output=False)
    node.add_port(name="output", is_output=True)
    node.build()
    return node


def create_nor():
    node = Node()
    node.title = "NOR"
    node.type_text = "built-in"
    node.add_port(name="input", is_output=False)
    node.add_port(name="output", is_output=True)
    node.build()
    return node


class NodeScene(QGraphicsScene):
    def dragEnterEvent(self, e):
        e.acceptProposedAction()

    def dropEvent(self, e):
        # find item at these coordinates
        item = self.itemAt(e.scenePos())
        if item.setAcceptDrops == True:
            # pass on event to item at the coordinates
            try:
                item.dropEvent(e)
            except RuntimeError:
                pass  # This will supress a Runtime Error generated when dropping into a widget with no ProxyWidget

    def dragMoveEvent(self, e):
        e.acceptProposedAction()


class NodeWidget(QWidget):
    def __init__(self, parent):
        super(NodeWidget, self).__init__(parent)
        main_layout = QVBoxLayout()
        main_layout.setContentsMargins(0, 0, 0, 0)
        self.setLayout(main_layout)

        self.node_editor = NodeEditor(self)
        self.scene = NodeScene()
        self.scene.setSceneRect(0, 0, 9999, 9999)
        self.view = View(self)
        self.view.setScene(self.scene)
        self.node_editor.install(self.scene)

        main_layout.addWidget(self.view)

        self.view.request_node.connect(self.create_node)

    def create_node(self, name):
        print("creating node:", name)

        if name == "Input":
            node = create_input()

        elif name == "Output":
            node = create_output()
        elif name == "And":
            node = create_and()
        elif name == "Not":
            node = create_not()
        elif name == "Nor":
            node = create_nor()

        self.scene.addItem(node)

        pos = self.view.mapFromGlobal(QCursor.pos())
        node.setPos(self.view.mapToScene(pos))