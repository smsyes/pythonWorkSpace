# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'rename.ui'
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
        Form.resize(298, 132)
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.name_lineEdit = QLineEdit(Form)
        self.name_lineEdit.setObjectName(u"name_lineEdit")

        self.gridLayout.addWidget(self.name_lineEdit, 1, 0, 1, 1)

        self.padding_lineEdit = QLineEdit(Form)
        self.padding_lineEdit.setObjectName(u"padding_lineEdit")

        self.gridLayout.addWidget(self.padding_lineEdit, 1, 1, 1, 1)

        self.rename_pushButton = QPushButton(Form)
        self.rename_pushButton.setObjectName(u"rename_pushButton")

        self.gridLayout.addWidget(self.rename_pushButton, 1, 2, 1, 1)

        self.prefix_lineEdit = QLineEdit(Form)
        self.prefix_lineEdit.setObjectName(u"prefix_lineEdit")

        self.gridLayout.addWidget(self.prefix_lineEdit, 2, 0, 1, 1)

        self.suffix_lineEdit = QLineEdit(Form)
        self.suffix_lineEdit.setObjectName(u"suffix_lineEdit")

        self.gridLayout.addWidget(self.suffix_lineEdit, 2, 1, 1, 1)

        self.oldname_lineEdit = QLineEdit(Form)
        self.oldname_lineEdit.setObjectName(u"oldname_lineEdit")

        self.gridLayout.addWidget(self.oldname_lineEdit, 3, 0, 1, 1)

        self.newname_lineEdit = QLineEdit(Form)
        self.newname_lineEdit.setObjectName(u"newname_lineEdit")

        self.gridLayout.addWidget(self.newname_lineEdit, 3, 1, 1, 1)

        self.change_pushButton = QPushButton(Form)
        self.change_pushButton.setObjectName(u"change_pushButton")

        self.gridLayout.addWidget(self.change_pushButton, 3, 2, 1, 1)

        self.message_label = QLabel(Form)
        self.message_label.setObjectName(u"message_label")
        self.message_label.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.message_label, 4, 0, 1, 3)

        self.label = QLabel(Form)
        self.label.setObjectName(u"label")
        self.label.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label, 0, 0, 1, 3)

        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")

        self.gridLayout.addWidget(self.label_2, 2, 2, 1, 1)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.name_lineEdit.setText(QCoreApplication.translate("Form", u"Name..", None))
        self.padding_lineEdit.setText(QCoreApplication.translate("Form", u"0", None))
        self.rename_pushButton.setText(QCoreApplication.translate("Form", u"ReName", None))
        self.prefix_lineEdit.setText(QCoreApplication.translate("Form", u"Prefix..", None))
        self.suffix_lineEdit.setText(QCoreApplication.translate("Form", u"Suffix..", None))
        self.oldname_lineEdit.setText(QCoreApplication.translate("Form", u"Old Name..", None))
        self.newname_lineEdit.setText(QCoreApplication.translate("Form", u"New Name..", None))
        self.change_pushButton.setText(QCoreApplication.translate("Form", u"ChangeName", None))
        self.message_label.setText(QCoreApplication.translate("Form", u"...", None))
        self.label.setText(QCoreApplication.translate("Form", u"# ReName = Prefix + Name + Padding(**) + Suffix", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"<< Press Enter..", None))
    # retranslateUi

