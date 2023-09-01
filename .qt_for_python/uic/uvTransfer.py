# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'uvTransfer.ui'
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
        Form.resize(284, 59)
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.NToNradioButton = QRadioButton(Form)
        self.NToNradioButton.setObjectName(u"NToNradioButton")
        self.NToNradioButton.setChecked(True)

        self.gridLayout.addWidget(self.NToNradioButton, 1, 0, 1, 1)

        self.OneToNradioButton = QRadioButton(Form)
        self.OneToNradioButton.setObjectName(u"OneToNradioButton")

        self.gridLayout.addWidget(self.OneToNradioButton, 1, 1, 1, 1)

        self.TransferpushButton = QPushButton(Form)
        self.TransferpushButton.setObjectName(u"TransferpushButton")

        self.gridLayout.addWidget(self.TransferpushButton, 1, 2, 1, 1)

        self.label = QLabel(Form)
        self.label.setObjectName(u"label")
        self.label.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label, 0, 0, 1, 3)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.NToNradioButton.setText(QCoreApplication.translate("Form", u"N : N", None))
        self.OneToNradioButton.setText(QCoreApplication.translate("Form", u"One : N", None))
        self.TransferpushButton.setText(QCoreApplication.translate("Form", u"UV Transfer", None))
        self.label.setText(QCoreApplication.translate("Form", u"# Half or FirstItem and Target[:-1] List Transfer", None))
    # retranslateUi

