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
from PySide2.QtOpenGL import *
from PySide2 import __version__
from shiboken2 import wrapInstance 


from connection import Connection
from node import Node


class View(QGraphicsView):
    _background_color = QColor(38, 38, 38)

    _grid_pen_s = QPen(QColor(52, 52, 52, 255), 0.5)
    _grid_pen_l = QPen(QColor(22, 22, 22, 255), 1.0)

    _grid_size_fine = 15
    _grid_size_course = 150

    _mouse_wheel_zoom_rate = 0.0015

    request_node = Signal(str)

    def __init__(self, parent):
        super(View, self).__init__(parent)
        self.setRenderHint(QPainter.Antialiasing)
        self._manipulationMode = 0

        gl_format = QGLFormat(QGL.SampleBuffers)
        gl_format.setSamples(10)
        gl_widget = QGLWidget(gl_format)

        self.currentScale = 1
        self._pan = False
        self._pan_start_x = 0
        self._pan_start_y = 0
        self._numScheduledScalings = 0
        self.lastMousePos = QPoint()

        self.setViewport(gl_widget)

        self.setTransformationAnchor(QGraphicsView.AnchorUnderMouse)
        self.setResizeAnchor(QGraphicsView.AnchorUnderMouse)
        self.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.setFrameShape(QFrame.NoFrame)

    def wheelEvent(self, event):

        # sometimes you can triger the wheen when panning so we disable when panning
        if self._pan:
            return

        num_degrees = event.delta() / 8.0
        num_steps = num_degrees / 5.0
        self._numScheduledScalings += num_steps

        # If the user moved the wheel another direction, we reset previously scheduled scalings
        if self._numScheduledScalings * num_steps < 0:
            self._numScheduledScalings = num_steps

        self.anim = QTimeLine(350)
        self.anim.setUpdateInterval(20)

        self.anim.valueChanged.connect(self.scaling_time)
        self.anim.finished.connect(self.anim_finished)
        self.anim.start()

    def scaling_time(self, x):
        factor = 1.0 + self._numScheduledScalings / 300.0

        self.currentScale *= factor

        self.scale(factor, factor)

    def anim_finished(self):
        if self._numScheduledScalings > 0:
            self._numScheduledScalings -= 1
        else:
            self._numScheduledScalings += 1

    def drawBackground(self, painter, rect):

        painter.fillRect(rect, self._background_color)

        left = int(rect.left()) - (int(rect.left()) % self._grid_size_fine)
        top = int(rect.top()) - (int(rect.top()) % self._grid_size_fine)

        # Draw horizontal fine lines
        gridLines = []
        painter.setPen(self._grid_pen_s)
        y = float(top)
        while y < float(rect.bottom()):
            gridLines.append(QLineF(rect.left(), y, rect.right(), y))
            y += self._grid_size_fine
        painter.drawLines(gridLines)

        # Draw vertical fine lines
        gridLines = []
        painter.setPen(self._grid_pen_s)
        x = float(left)
        while x < float(rect.right()):
            gridLines.append(QLineF(x, rect.top(), x, rect.bottom()))
            x += self._grid_size_fine
        painter.drawLines(gridLines)

        # Draw thick grid
        left = int(rect.left()) - (int(rect.left()) % self._grid_size_course)
        top = int(rect.top()) - (int(rect.top()) % self._grid_size_course)

        # Draw vertical thick lines
        gridLines = []
        painter.setPen(self._grid_pen_l)
        x = left
        while x < rect.right():
            gridLines.append(QLineF(x, rect.top(), x, rect.bottom()))
            x += self._grid_size_course
        painter.drawLines(gridLines)

        # Draw horizontal thick lines
        gridLines = []
        painter.setPen(self._grid_pen_l)
        y = top
        while y < rect.bottom():
            gridLines.append(QLineF(rect.left(), y, rect.right(), y))
            y += self._grid_size_course
        painter.drawLines(gridLines)

        return super(View, self).drawBackground(painter, rect)

    def contextMenuEvent(self, event):
        cursor = QCursor()
        # origin = self.mapFromGlobal(cursor.pos())
        pos = self.mapFromGlobal(cursor.pos())
        item = self.itemAt(event.pos())

        if item:
            if isinstance(item, Node):

                print("Found Node", item)

                menu = QMenu(self)

                hello_action = QAction("Hello", self)

                menu.addAction(hello_action)
                action = menu.exec_(self.mapToGlobal(pos))

                if action == hello_action:
                    print("Hello")

    def dragEnterEvent(self, e):

        if e.mimeData().hasFormat("text/plain"):
            e.accept()
        else:
            e.ignore()

    def dropEvent(self, e):
        drop_node_name = e.mimeData().text()
        self.request_node.emit(drop_node_name)

    def mousePressEvent(self, event):
        if event.button() == Qt.MiddleButton:
            self._pan = True
            self._pan_start_x = event.x()
            self._pan_start_y = event.y()
            self.setCursor(Qt.ClosedHandCursor)

        return super(View, self).mousePressEvent(event)

    def mouseReleaseEvent(self, event):
        if event.button() == Qt.MiddleButton:
            self._pan = False
            self.setCursor(Qt.ArrowCursor)

        return super(View, self).mouseReleaseEvent(event)

    def mouseMoveEvent(self, event):
        if self._pan:

            self.horizontalScrollBar().setValue(
                self.horizontalScrollBar().value() - (event.x() - self._pan_start_x)
            )

            self.verticalScrollBar().setValue(
                self.verticalScrollBar().value() - (event.y() - self._pan_start_y)
            )

            self._pan_start_x = event.x()
            self._pan_start_y = event.y()

        return super(View, self).mouseMoveEvent(event)