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


from connection import Connection
from node import Node
from port import Port


class NodeEditor(QObject):
    def __init__(self, parent):
        super(NodeEditor, self).__init__(parent)
        self.connection = None
        self.port = None
        self.scene = None
        self._last_selected = None

    def install(self, scene):
        self.scene = scene
        self.scene.installEventFilter(self)

    def item_at(self, position):
        items = self.scene.items(
            QRectF(position - QPointF(1, 1), QSizeF(3, 3))
        )

        if items:
            return items[0]
        return None

    def eventFilter(self, watched, event):
        if type(event) == QWidgetItem:
            return False

        if event.type() == QEvent.GraphicsSceneMousePress:

            if event.button() == Qt.LeftButton:
                item = self.item_at(event.scenePos())

                if isinstance(item, Port):
                    self.connection = Connection(None)
                    self.scene.addItem(self.connection)
                    # self.connection.start_port = item
                    self.port = item
                    self.connection.start_pos = item.scenePos()
                    self.connection.end_pos = event.scenePos()
                    self.connection.update_path()
                    return True

                elif isinstance(item, Connection):
                    self.connection = Connection(None)
                    self.connection.start_pos = item.start_pos
                    self.scene.addItem(self.connection)
                    # self.connection.start_port = item.start_port
                    self.port = item.start_port
                    self.connection.end_pos = event.scenePos()
                    self.connection.update_start_and_end_pos()  # to fix the offset
                    return True

                elif isinstance(item, Node):
                    if self._last_selected:
                        # If we clear the scene, we loose the last selection
                        try:
                            self._last_selected.select_connections(False)
                        except RuntimeError:
                            pass

                    item.select_connections(True)
                    self._last_selected = item

                else:
                    try:
                        if self._last_selected:
                            self._last_selected.select_connections(False)
                    except RuntimeError:
                        pass

                    self._last_selected = None

            elif event.button() == Qt.RightButton:
                # context menu
                pass

        elif event.type() == QEvent.KeyPress:
            if event.key() == Qt.Key_Delete:

                for item in self.scene.selectedItems():

                    if isinstance(item, (Connection, Node)):
                        item.delete()

                return True

        elif event.type() == QEvent.GraphicsSceneMouseMove:
            if self.connection:
                self.connection.end_pos = event.scenePos()
                self.connection.update_path()
                return True

        elif event.type() == QEvent.GraphicsSceneMouseRelease:
            if self.connection and event.button() == Qt.LeftButton:
                item = self.item_at(event.scenePos())

                # connecting a port
                if isinstance(item, Port):
                    if self.port.can_connect_to(item):
                        print("Making connection")

                        # delete existing connection on the new port
                        if item.connection:
                            item.connection.delete()

                        # delete existing connection to the original port
                        self.port.clear_connection()
                        item.clear_connection()

                        self.connection.start_port = self.port

                        self.connection.end_port = item

                        self.connection.update_start_and_end_pos()
                        self.connection = None
                    else:
                        print("Deleting connection")
                        self.connection.delete()
                        self.connection = None

                if self.connection:
                    self.connection.delete()
                self.connection = None
                self.port = None
                return True

        return super(NodeEditor, self).eventFilter(watched, event)