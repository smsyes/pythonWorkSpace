# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'ModuleBuilder.ui'
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
        Form.resize(476, 477)
        self.verticalLayout = QVBoxLayout(Form)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.label = QLabel(Form)
        self.label.setObjectName(u"label")
        font = QFont()
        font.setPointSize(15)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)

        self.verticalLayout.addWidget(self.label)

        self.line = QFrame(Form)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line)

        self.label_9 = QLabel(Form)
        self.label_9.setObjectName(u"label_9")

        self.verticalLayout.addWidget(self.label_9)

        self.prefix_lineEdit = QLineEdit(Form)
        self.prefix_lineEdit.setObjectName(u"prefix_lineEdit")

        self.verticalLayout.addWidget(self.prefix_lineEdit)

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

        self.verticalLayout.addWidget(self.module_comboBox)

        self.import_pushButton = QPushButton(Form)
        self.import_pushButton.setObjectName(u"import_pushButton")

        self.verticalLayout.addWidget(self.import_pushButton)

        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")

        self.verticalLayout.addWidget(self.label_2)

        self.mirror_pushButton = QPushButton(Form)
        self.mirror_pushButton.setObjectName(u"mirror_pushButton")

        self.verticalLayout.addWidget(self.mirror_pushButton)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.build_pushButton = QPushButton(Form)
        self.build_pushButton.setObjectName(u"build_pushButton")

        self.horizontalLayout.addWidget(self.build_pushButton)

        self.rebuild_pushButton = QPushButton(Form)
        self.rebuild_pushButton.setObjectName(u"rebuild_pushButton")

        self.horizontalLayout.addWidget(self.rebuild_pushButton)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.line_2 = QFrame(Form)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_2)

        self.label_7 = QLabel(Form)
        self.label_7.setObjectName(u"label_7")

        self.verticalLayout.addWidget(self.label_7)

        self.label_8 = QLabel(Form)
        self.label_8.setObjectName(u"label_8")

        self.verticalLayout.addWidget(self.label_8)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.bendType_comboBox = QComboBox(Form)
        self.bendType_comboBox.addItem("")
        self.bendType_comboBox.addItem("")
        self.bendType_comboBox.setObjectName(u"bendType_comboBox")

        self.horizontalLayout_2.addWidget(self.bendType_comboBox)

        self.bendAdd_pushButton = QPushButton(Form)
        self.bendAdd_pushButton.setObjectName(u"bendAdd_pushButton")

        self.horizontalLayout_2.addWidget(self.bendAdd_pushButton)


        self.verticalLayout.addLayout(self.horizontalLayout_2)

        self.line_4 = QFrame(Form)
        self.line_4.setObjectName(u"line_4")
        self.line_4.setFrameShape(QFrame.HLine)
        self.line_4.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_4)

        self.label_5 = QLabel(Form)
        self.label_5.setObjectName(u"label_5")

        self.verticalLayout.addWidget(self.label_5)

        self.label_6 = QLabel(Form)
        self.label_6.setObjectName(u"label_6")

        self.verticalLayout.addWidget(self.label_6)

        self.parent_pushButton = QPushButton(Form)
        self.parent_pushButton.setObjectName(u"parent_pushButton")

        self.verticalLayout.addWidget(self.parent_pushButton)

        self.line_5 = QFrame(Form)
        self.line_5.setObjectName(u"line_5")
        self.line_5.setFrameShape(QFrame.HLine)
        self.line_5.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_5)

        self.label_3 = QLabel(Form)
        self.label_3.setObjectName(u"label_3")

        self.verticalLayout.addWidget(self.label_3)

        self.label_4 = QLabel(Form)
        self.label_4.setObjectName(u"label_4")

        self.verticalLayout.addWidget(self.label_4)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.followEnum_lineEdit = QLineEdit(Form)
        self.followEnum_lineEdit.setObjectName(u"followEnum_lineEdit")

        self.horizontalLayout_3.addWidget(self.followEnum_lineEdit)

        self.followAdd_pushButton = QPushButton(Form)
        self.followAdd_pushButton.setObjectName(u"followAdd_pushButton")

        self.horizontalLayout_3.addWidget(self.followAdd_pushButton)


        self.verticalLayout.addLayout(self.horizontalLayout_3)

        self.line_3 = QFrame(Form)
        self.line_3.setObjectName(u"line_3")
        self.line_3.setFrameShape(QFrame.HLine)
        self.line_3.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_3)

        self.data_label = QLabel(Form)
        self.data_label.setObjectName(u"data_label")
        self.data_label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.data_label)

        self.authour_label = QLabel(Form)
        self.authour_label.setObjectName(u"authour_label")
        self.authour_label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.authour_label)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label.setText(QCoreApplication.translate("Form", u"Module Builder", None))
        self.label_9.setText(QCoreApplication.translate("Form", u"# If a fit file exists in the prefix name and path, it will be imported.", None))
        self.prefix_lineEdit.setText(QCoreApplication.translate("Form", u"Prefix Name..", None))
        self.module_comboBox.setItemText(0, QCoreApplication.translate("Form", u"spine", None))
        self.module_comboBox.setItemText(1, QCoreApplication.translate("Form", u"leg", None))
        self.module_comboBox.setItemText(2, QCoreApplication.translate("Form", u"arm", None))
        self.module_comboBox.setItemText(3, QCoreApplication.translate("Form", u"neck", None))
        self.module_comboBox.setItemText(4, QCoreApplication.translate("Form", u"head", None))
        self.module_comboBox.setItemText(5, QCoreApplication.translate("Form", u"hand", None))
        self.module_comboBox.setItemText(6, QCoreApplication.translate("Form", u"foot", None))
        self.module_comboBox.setItemText(7, QCoreApplication.translate("Form", u"Qarm", None))
        self.module_comboBox.setItemText(8, QCoreApplication.translate("Form", u"Qleg", None))
        self.module_comboBox.setItemText(9, QCoreApplication.translate("Form", u"tail", None))

        self.import_pushButton.setText(QCoreApplication.translate("Form", u"Import", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"# Selection List [0] = Base Fit top group / Selection List [1] = Mirror Fit top group", None))
        self.mirror_pushButton.setText(QCoreApplication.translate("Form", u"Mirror", None))
        self.build_pushButton.setText(QCoreApplication.translate("Form", u"Build", None))
        self.rebuild_pushButton.setText(QCoreApplication.translate("Form", u"ReBuild", None))
        self.label_7.setText(QCoreApplication.translate("Form", u"Bend Setting", None))
        self.label_8.setText(QCoreApplication.translate("Form", u"# Execute after selecting the joint to be installed", None))
        self.bendType_comboBox.setItemText(0, QCoreApplication.translate("Form", u"L", None))
        self.bendType_comboBox.setItemText(1, QCoreApplication.translate("Form", u"R", None))

        self.bendAdd_pushButton.setText(QCoreApplication.translate("Form", u"Add", None))
        self.label_5.setText(QCoreApplication.translate("Form", u"Module Parent", None))
        self.label_6.setText(QCoreApplication.translate("Form", u"# Selection List [0] = Parents Joint / Selection List [1] = Child top Group", None))
        self.parent_pushButton.setText(QCoreApplication.translate("Form", u"Parent", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"Follow Setting", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"# Selection List [:-1] = Follower / Selection List [-1] = Following", None))
        self.followEnum_lineEdit.setText(QCoreApplication.translate("Form", u"Enum Name..", None))
        self.followAdd_pushButton.setText(QCoreApplication.translate("Form", u"Add", None))
        self.data_label.setText(QCoreApplication.translate("Form", u"DATA : 20210705", None))
        self.authour_label.setText(QCoreApplication.translate("Form", u"AUTHOUR : Minsung", None))
    # retranslateUi

