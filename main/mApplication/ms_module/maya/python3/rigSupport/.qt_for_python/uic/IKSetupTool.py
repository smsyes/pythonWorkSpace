# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'IKSetupTool.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_Form(object):
    def setupUi(self, Form):
        if not Form.objectName():
            Form.setObjectName(u"Form")
        Form.resize(265, 118)
        self.verticalLayout = QVBoxLayout(Form)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.label_3 = QLabel(Form)
        self.label_3.setObjectName(u"label_3")
        font = QFont()
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75)
        self.label_3.setFont(font)
        self.label_3.setLineWidth(1)
        self.label_3.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_3)

        self.line = QFrame(Form)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line)

        self.label = QLabel(Form)
        self.label.setObjectName(u"label")
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.baseNameLE = QLineEdit(Form)
        self.baseNameLE.setObjectName(u"baseNameLE")

        self.verticalLayout.addWidget(self.baseNameLE)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")

        self.horizontalLayout.addWidget(self.label_2)

        self.NumSP = QSpinBox(Form)
        self.NumSP.setObjectName(u"NumSP")

        self.horizontalLayout.addWidget(self.NumSP)

        self.SetupPB = QPushButton(Form)
        self.SetupPB.setObjectName(u"SetupPB")

        self.horizontalLayout.addWidget(self.SetupPB)


        self.verticalLayout.addLayout(self.horizontalLayout)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"IK Setup Tool", None))
        self.label.setText(QCoreApplication.translate("Form", u"# Choose the first and last IK joint and do it.", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"IK Number :", None))
        self.SetupPB.setText(QCoreApplication.translate("Form", u"Setting", None))
    # retranslateUi

