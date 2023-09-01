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


palette = QPalette()

palette.setColor(QPalette.Window, QColor(27, 35, 38))
palette.setColor(QPalette.WindowText, QColor(234, 234, 234))
palette.setColor(QPalette.Base, QColor(27, 35, 38))
palette.setColor(QPalette.Disabled, QPalette.Base, QColor(27 + 5, 35 + 5, 38 + 5))
palette.setColor(QPalette.AlternateBase, QColor(12, 15, 16))
palette.setColor(QPalette.ToolTipBase, QColor(27, 35, 38))
palette.setColor(QPalette.ToolTipText, Qt.white)
palette.setColor(QPalette.Text, QColor(200, 200, 200))
palette.setColor(QPalette.Disabled, QPalette.Text, QColor(100, 100, 100))
palette.setColor(QPalette.Button, QColor(27, 35, 38))
palette.setColor(QPalette.ButtonText, Qt.white)
palette.setColor(QPalette.BrightText, QColor(100, 215, 222))
palette.setColor(QPalette.Link, QColor(126, 71, 130))
palette.setColor(QPalette.Highlight, QColor(126, 71, 130))
palette.setColor(QPalette.HighlightedText, Qt.white)
palette.setColor(QPalette.Disabled, QPalette.Light, Qt.black)
palette.setColor(QPalette.Disabled, QPalette.Shadow, QColor(12, 15, 16))