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

from port import Port

class Node(QGraphicsPathItem):
    def __init__(self):
        super(Node, self).__init__()

        self.setFlag(QGraphicsPathItem.ItemIsMovable)
        self.setFlag(QGraphicsPathItem.ItemIsSelectable)

        self._title_text = "Title"
        self._type_text = "base"

        self._width = 30  # The Width of the node
        self._height = 30  # the height of the node
        self._ports = []  # A list of ports

        self.node_color = QColor(20, 20, 20, 200)

        self.title_path = QPainterPath()  # The path for the title
        self.type_path = QPainterPath()  # The path for the type
        self.misc_path = QPainterPath()  # a bunch of other stuff

        self.horizontal_margin = 30  # horizontal margin
        self.vertical_margin = 15  # vertical margin

    @property
    def title(self):
        return self._title_text

    @title.setter
    def title(self, title):
        self._title_text = title

    @property
    def type_text(self):
        return self._type_text

    @type_text.setter
    def type_text(self, type_text):
        self._type_text = type_text

    def paint(self, painter, option=None, widget=None):
        if self.isSelected():
            painter.setPen(QPen(QColor(241, 175, 0), 2))
            painter.setBrush(self.node_color)
        else:
            painter.setPen(self.node_color.lighter())
            painter.setBrush(self.node_color)

        painter.drawPath(self.path())
        painter.setPen(Qt.NoPen)
        painter.setBrush(Qt.white)

        painter.drawPath(self.title_path)
        painter.drawPath(self.type_path)
        painter.drawPath(self.misc_path)

    def add_port(self, name, is_output=False, flags=0, ptr=None):
        port = Port(self, self.scene())
        port.set_is_output(is_output)
        port.set_name(name)
        port.set_node(node=self)
        port.set_port_flags(flags)
        port.set_ptr(ptr)

        self._ports.append(port)

    def build(self):
        """ Build the node
        """

        self.title_path = QPainterPath()  # reset
        self.type_path = QPainterPath()  # The path for the type
        self.misc_path = QPainterPath()  # a bunch of other stuff

        total_width = 0
        total_height = 0
        path = QPainterPath()  # The main path

        # The fonts what will be used
        title_font = QFont("Lucida Sans Unicode", pointSize=16)
        title_type_font = QFont("Lucida Sans Unicode", pointSize=8)
        port_font = QFont("Lucida Sans Unicode")

        # Get the dimentions of the title and type
        title_dim = {
            "w": QFontMetrics(title_font).width(self._title_text),
            "h": QFontMetrics(title_font).height(),
        }

        title_type_dim = {
            "w": QFontMetrics(title_type_font).width("(" + self._type_text + ")"),
            "h": QFontMetrics(title_type_font).height(),
        }

        # Get the max width
        for dim in [title_dim["w"], title_type_dim["w"]]:
            if dim > total_width:
                total_width = dim

        # Add both the title and type height together for the total height
        for dim in [title_dim["h"], title_type_dim["h"]]:
            total_height += dim

        # Add the heigth for each of the ports
        for port in self._ports:
            port_dim = {
                "w": QFontMetrics(port_font).width(port.name()),
                "h": QFontMetrics(port_font).height(),
            }

            if port_dim["w"] > total_width:
                total_width = port_dim["w"]

            total_height += port_dim["h"]

        # Add the margin to the total_width
        total_width += self.horizontal_margin
        total_height += self.vertical_margin

        # Draw the background rectangle
        path.addRoundedRect(
            -total_width / 2, -total_height / 2, total_width, total_height, 5, 5
        )

        # Draw the title
        self.title_path.addText(
            -title_dim["w"] / 2,
            (-total_height / 2) + title_dim["h"],
            title_font,
            self._title_text,
        )

        # Draw the type
        self.type_path.addText(
            -title_type_dim["w"] / 2,
            (-total_height / 2) + title_dim["h"] + title_type_dim["h"],
            title_type_font,
            "(" + self._type_text + ")",
        )

        y = (-total_height / 2) + title_dim["h"] + title_type_dim["h"] + port_dim["h"]

        for port in self._ports:
            if port.is_output():
                port.setPos(total_width / 2 - 10, y)
            else:
                port.setPos(-total_width / 2 + 10, y)
            y += port_dim["h"]

        self.setPath(path)

        self._width = total_width
        self._height = total_height

    def select_connections(self, value):
        for port in self._ports:
            if port.connection:
                port.connection._do_highlight = value
                port.connection.update_path()
            # for connection in port.connections():
            #     connection._do_highlight = value
            #     connection.update_path()

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

    def delete(self):
        """Delete the connection.
        Remove any found connections ports by calling :any:`Port.remove_connection`.  After connections
        have been removed set the stored :any:`Port` to None. Lastly call :any:`QGraphicsScene.removeItem`
        on the scene to remove this widget.
        """

        to_delete = []

        for port in self._ports:
            if port.connection:
                to_delete.append(port.connection)

        for connection in to_delete:
            connection.delete()

        self.scene().removeItem(self)
        