# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'reNamergmDAju.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_ReNamer(object):
    def setupUi(self, ReNamer):
        if not ReNamer.objectName():
            ReNamer.setObjectName(u"ReNamer")
        ReNamer.resize(216, 231)
        self.verticalLayout = QVBoxLayout(ReNamer)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalSpacer = QSpacerItem(195, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer)

        self.label = QLabel(ReNamer)
        self.label.setObjectName(u"label")
        font = QFont()
        font.setFamily(u"\ub9d1\uc740 \uace0\ub515")
        font.setPointSize(11)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.horizontalSpacer_2 = QSpacerItem(195, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_2)

        self.nameMathodLine = QLineEdit(ReNamer)
        self.nameMathodLine.setObjectName(u"nameMathodLine")
        self.nameMathodLine.setDragEnabled(True)

        self.verticalLayout.addWidget(self.nameMathodLine)

        self.line = QFrame(ReNamer)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line)

        self.label_2 = QLabel(ReNamer)
        self.label_2.setObjectName(u"label_2")
        font1 = QFont()
        font1.setPointSize(7)
        self.label_2.setFont(font1)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_2)

        self.line_2 = QFrame(ReNamer)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_2)

        self.label_3 = QLabel(ReNamer)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setFont(font1)
        self.label_3.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_3)

        self.horizontalSpacer_3 = QSpacerItem(195, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_3)


        self.retranslateUi(ReNamer)

        QMetaObject.connectSlotsByName(ReNamer)
    # setupUi

    def retranslateUi(self, ReNamer):
        ReNamer.setWindowTitle(QCoreApplication.translate("ReNamer", u"Form", None))
        self.label.setText(QCoreApplication.translate("ReNamer", u"ReNamer", None))
        self.label_2.setText(QCoreApplication.translate("ReNamer", u"Replace Method : 'Old>>New'\n"
"MakeName Method : num('#'), alpha('@')\n"
"Prefix_Suffix Method : pre%SelectedName%suf", None))
        self.label_3.setText(QCoreApplication.translate("ReNamer", u"__AUTHOR__ = 'ms'\n"
"__UPDATE__ = 20240827", None))
    # retranslateUi

