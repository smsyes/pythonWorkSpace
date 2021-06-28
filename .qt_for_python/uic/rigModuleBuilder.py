# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'rigModuleBuilder.ui'
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
        Form.resize(575, 609)
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.enum_lineEdit = QLineEdit(Form)
        self.enum_lineEdit.setObjectName(u"enum_lineEdit")

        self.gridLayout.addWidget(self.enum_lineEdit, 11, 0, 1, 1)

        self.line = QFrame(Form)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.gridLayout.addWidget(self.line, 8, 0, 1, 4)

        self.outputAdd_pushButton = QPushButton(Form)
        self.outputAdd_pushButton.setObjectName(u"outputAdd_pushButton")

        self.gridLayout.addWidget(self.outputAdd_pushButton, 6, 3, 1, 1)

        self.rebuild_pushButton = QPushButton(Form)
        self.rebuild_pushButton.setObjectName(u"rebuild_pushButton")

        self.gridLayout.addWidget(self.rebuild_pushButton, 7, 3, 1, 1)

        self.line_2 = QFrame(Form)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.gridLayout.addWidget(self.line_2, 12, 0, 1, 4)

        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")

        self.gridLayout.addWidget(self.label_2, 4, 0, 1, 1)

        self.label = QLabel(Form)
        self.label.setObjectName(u"label")
        font = QFont()
        font.setFamily(u"Bahnschrift")
        font.setPointSize(12)
        self.label.setFont(font)

        self.gridLayout.addWidget(self.label, 0, 0, 1, 1)

        self.module_treeWidget = QTreeWidget(Form)
        self.module_treeWidget.setObjectName(u"module_treeWidget")
        self.module_treeWidget.setEditTriggers(QAbstractItemView.NoEditTriggers)
        self.module_treeWidget.setDragEnabled(True)
        self.module_treeWidget.setDragDropMode(QAbstractItemView.InternalMove)

        self.gridLayout.addWidget(self.module_treeWidget, 5, 0, 1, 4)

        self.label_4 = QLabel(Form)
        self.label_4.setObjectName(u"label_4")

        self.gridLayout.addWidget(self.label_4, 10, 0, 1, 3)

        self.label_3 = QLabel(Form)
        self.label_3.setObjectName(u"label_3")

        self.gridLayout.addWidget(self.label_3, 9, 0, 1, 1)

        self.preffix_lineEdit = QLineEdit(Form)
        self.preffix_lineEdit.setObjectName(u"preffix_lineEdit")

        self.gridLayout.addWidget(self.preffix_lineEdit, 2, 0, 1, 4)

        self.module_pushButton = QPushButton(Form)
        self.module_pushButton.setObjectName(u"module_pushButton")

        self.gridLayout.addWidget(self.module_pushButton, 3, 3, 1, 1)

        self.Build_pushButton = QPushButton(Form)
        self.Build_pushButton.setObjectName(u"Build_pushButton")

        self.gridLayout.addWidget(self.Build_pushButton, 7, 0, 1, 1)

        self.module_comboBox = QComboBox(Form)
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.setObjectName(u"module_comboBox")

        self.gridLayout.addWidget(self.module_comboBox, 3, 0, 1, 3)

        self.label_5 = QLabel(Form)
        self.label_5.setObjectName(u"label_5")

        self.gridLayout.addWidget(self.label_5, 6, 0, 1, 2)

        self.followAdd_pushButton = QPushButton(Form)
        self.followAdd_pushButton.setObjectName(u"followAdd_pushButton")

        self.gridLayout.addWidget(self.followAdd_pushButton, 11, 3, 1, 1)

        self.line_3 = QFrame(Form)
        self.line_3.setObjectName(u"line_3")
        self.line_3.setFrameShape(QFrame.HLine)
        self.line_3.setFrameShadow(QFrame.Sunken)

        self.gridLayout.addWidget(self.line_3, 1, 0, 1, 4)

        self.data = QLabel(Form)
        self.data.setObjectName(u"data")
        font1 = QFont()
        font1.setFamily(u"\uad74\ub9bc")
        self.data.setFont(font1)
        self.data.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.data, 13, 0, 1, 4)

        self.author = QLabel(Form)
        self.author.setObjectName(u"author")
        self.author.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.author, 14, 0, 1, 4)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.enum_lineEdit.setText(QCoreApplication.translate("Form", u"Enum Name..", None))
        self.outputAdd_pushButton.setText(QCoreApplication.translate("Form", u"Output Add", None))
        self.rebuild_pushButton.setText(QCoreApplication.translate("Form", u"ReBuild", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Module Structure", None))
        self.label.setText(QCoreApplication.translate("Form", u"Rig Module Builder", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"# Selection List [:-1] = Follower / Selection List [-1] = Following", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"Follow Setting", None))
        self.preffix_lineEdit.setText(QCoreApplication.translate("Form", u"Preffix Name..", None))
        self.module_pushButton.setText(QCoreApplication.translate("Form", u"Import", None))
        self.Build_pushButton.setText(QCoreApplication.translate("Form", u"Build", None))
        self.module_comboBox.setItemText(0, QCoreApplication.translate("Form", u"Spine", None))
        self.module_comboBox.setItemText(1, QCoreApplication.translate("Form", u"Leg", None))
        self.module_comboBox.setItemText(2, QCoreApplication.translate("Form", u"Arm", None))
        self.module_comboBox.setItemText(3, QCoreApplication.translate("Form", u"Neck", None))
        self.module_comboBox.setItemText(4, QCoreApplication.translate("Form", u"Head", None))
        self.module_comboBox.setItemText(5, QCoreApplication.translate("Form", u"Hand", None))
        self.module_comboBox.setItemText(6, QCoreApplication.translate("Form", u"Foot", None))
        self.module_comboBox.setItemText(7, QCoreApplication.translate("Form", u"QArm", None))
        self.module_comboBox.setItemText(8, QCoreApplication.translate("Form", u"QLeg", None))
        self.module_comboBox.setItemText(9, QCoreApplication.translate("Form", u"Tail", None))

        self.label_5.setText(QCoreApplication.translate("Form", u"# Default output is one, and can be added after selection", None))
        self.followAdd_pushButton.setText(QCoreApplication.translate("Form", u"Add", None))
        self.data.setText(QCoreApplication.translate("Form", u"DATA : 20210625", None))
        self.author.setText(QCoreApplication.translate("Form", u"AUTHOR : MINSUNG", None))
    # retranslateUi

