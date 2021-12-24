# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'jointSet.ui'
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
        Form.resize(243, 593)
        self.verticalLayout = QVBoxLayout(Form)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalSpacer = QSpacerItem(245, 18, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer)

        self.label_6 = QLabel(Form)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_6)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.label = QLabel(Form)
        self.label.setObjectName(u"label")

        self.horizontalLayout.addWidget(self.label)

        self.labelCB = QComboBox(Form)
        self.labelCB.setObjectName(u"labelCB")

        self.horizontalLayout.addWidget(self.labelCB)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")

        self.horizontalLayout_2.addWidget(self.label_2)

        self.sideCB = QComboBox(Form)
        self.sideCB.setObjectName(u"sideCB")

        self.horizontalLayout_2.addWidget(self.sideCB)


        self.verticalLayout.addLayout(self.horizontalLayout_2)

        self.labelBT = QPushButton(Form)
        self.labelBT.setObjectName(u"labelBT")

        self.verticalLayout.addWidget(self.labelBT)

        self.label_12 = QLabel(Form)
        self.label_12.setObjectName(u"label_12")

        self.verticalLayout.addWidget(self.label_12)

        self.line = QFrame(Form)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line)

        self.horizontalSpacer_3 = QSpacerItem(245, 18, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_3)

        self.label_7 = QLabel(Form)
        self.label_7.setObjectName(u"label_7")
        self.label_7.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_7)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.label_3 = QLabel(Form)
        self.label_3.setObjectName(u"label_3")

        self.horizontalLayout_5.addWidget(self.label_3)

        self.ojCB = QComboBox(Form)
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.addItem("")
        self.ojCB.setObjectName(u"ojCB")

        self.horizontalLayout_5.addWidget(self.ojCB)


        self.verticalLayout.addLayout(self.horizontalLayout_5)

        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName(u"horizontalLayout_6")
        self.label_4 = QLabel(Form)
        self.label_4.setObjectName(u"label_4")

        self.horizontalLayout_6.addWidget(self.label_4)

        self.saoCB = QComboBox(Form)
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.addItem("")
        self.saoCB.setObjectName(u"saoCB")

        self.horizontalLayout_6.addWidget(self.saoCB)


        self.verticalLayout.addLayout(self.horizontalLayout_6)

        self.JOBT = QPushButton(Form)
        self.JOBT.setObjectName(u"JOBT")

        self.verticalLayout.addWidget(self.JOBT)

        self.label_15 = QLabel(Form)
        self.label_15.setObjectName(u"label_15")

        self.verticalLayout.addWidget(self.label_15)

        self.line_2 = QFrame(Form)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_2)

        self.horizontalSpacer_4 = QSpacerItem(37, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_4)

        self.label_8 = QLabel(Form)
        self.label_8.setObjectName(u"label_8")
        self.label_8.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_8)

        self.horizontalLayout_7 = QHBoxLayout()
        self.horizontalLayout_7.setObjectName(u"horizontalLayout_7")
        self.label_5 = QLabel(Form)
        self.label_5.setObjectName(u"label_5")

        self.horizontalLayout_7.addWidget(self.label_5)

        self.OMAxisCB = QComboBox(Form)
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.addItem("")
        self.OMAxisCB.setObjectName(u"OMAxisCB")

        self.horizontalLayout_7.addWidget(self.OMAxisCB)


        self.verticalLayout.addLayout(self.horizontalLayout_7)

        self.OMCB = QPushButton(Form)
        self.OMCB.setObjectName(u"OMCB")

        self.verticalLayout.addWidget(self.OMCB)

        self.label_14 = QLabel(Form)
        self.label_14.setObjectName(u"label_14")

        self.verticalLayout.addWidget(self.label_14)

        self.line_3 = QFrame(Form)
        self.line_3.setObjectName(u"line_3")
        self.line_3.setFrameShape(QFrame.HLine)
        self.line_3.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_3)

        self.horizontalSpacer_2 = QSpacerItem(245, 18, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_2)

        self.label_9 = QLabel(Form)
        self.label_9.setObjectName(u"label_9")
        self.label_9.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_9)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.label_10 = QLabel(Form)
        self.label_10.setObjectName(u"label_10")

        self.horizontalLayout_3.addWidget(self.label_10)

        self.numSP = QSpinBox(Form)
        self.numSP.setObjectName(u"numSP")
        self.numSP.setValue(3)

        self.horizontalLayout_3.addWidget(self.numSP)


        self.verticalLayout.addLayout(self.horizontalLayout_3)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.label_11 = QLabel(Form)
        self.label_11.setObjectName(u"label_11")

        self.horizontalLayout_4.addWidget(self.label_11)

        self.LSJAxisCB = QComboBox(Form)
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.addItem("")
        self.LSJAxisCB.setObjectName(u"LSJAxisCB")

        self.horizontalLayout_4.addWidget(self.LSJAxisCB)


        self.verticalLayout.addLayout(self.horizontalLayout_4)

        self.LSJBT = QPushButton(Form)
        self.LSJBT.setObjectName(u"LSJBT")

        self.verticalLayout.addWidget(self.LSJBT)

        self.label_13 = QLabel(Form)
        self.label_13.setObjectName(u"label_13")

        self.verticalLayout.addWidget(self.label_13)


        self.retranslateUi(Form)

        self.ojCB.setCurrentIndex(1)
        self.saoCB.setCurrentIndex(4)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_6.setText(QCoreApplication.translate("Form", u"### Joint Labeling ###", None))
        self.label.setText(QCoreApplication.translate("Form", u"Label Name :", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Side :", None))
        self.labelBT.setText(QCoreApplication.translate("Form", u"Labeling", None))
        self.label_12.setText(QCoreApplication.translate("Form", u"# Execute after selecting the top joint", None))
        self.label_7.setText(QCoreApplication.translate("Form", u"### Joint Orient ###", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"OrientJoint :", None))
        self.ojCB.setItemText(0, QCoreApplication.translate("Form", u"xyz", None))
        self.ojCB.setItemText(1, QCoreApplication.translate("Form", u"xzy", None))
        self.ojCB.setItemText(2, QCoreApplication.translate("Form", u"yxz", None))
        self.ojCB.setItemText(3, QCoreApplication.translate("Form", u"yzx", None))
        self.ojCB.setItemText(4, QCoreApplication.translate("Form", u"zxy", None))
        self.ojCB.setItemText(5, QCoreApplication.translate("Form", u"zyx", None))

        self.label_4.setText(QCoreApplication.translate("Form", u"SecondaryAxisOrient :", None))
        self.saoCB.setItemText(0, QCoreApplication.translate("Form", u"xup", None))
        self.saoCB.setItemText(1, QCoreApplication.translate("Form", u"xdown", None))
        self.saoCB.setItemText(2, QCoreApplication.translate("Form", u"yup", None))
        self.saoCB.setItemText(3, QCoreApplication.translate("Form", u"ydown", None))
        self.saoCB.setItemText(4, QCoreApplication.translate("Form", u"zup", None))
        self.saoCB.setItemText(5, QCoreApplication.translate("Form", u"zdown", None))

        self.JOBT.setText(QCoreApplication.translate("Form", u"JointOrient", None))
        self.label_15.setText(QCoreApplication.translate("Form", u"# Execute after selecting the top joint", None))
        self.label_8.setText(QCoreApplication.translate("Form", u"### Object Mirror ###", None))
        self.label_5.setText(QCoreApplication.translate("Form", u"Axis :", None))
        self.OMAxisCB.setItemText(0, QCoreApplication.translate("Form", u"xy", None))
        self.OMAxisCB.setItemText(1, QCoreApplication.translate("Form", u"xz", None))
        self.OMAxisCB.setItemText(2, QCoreApplication.translate("Form", u"yx", None))
        self.OMAxisCB.setItemText(3, QCoreApplication.translate("Form", u"yz", None))
        self.OMAxisCB.setItemText(4, QCoreApplication.translate("Form", u"zx", None))
        self.OMAxisCB.setItemText(5, QCoreApplication.translate("Form", u"zy", None))

        self.OMCB.setText(QCoreApplication.translate("Form", u"Mirror", None))
        self.label_14.setText(QCoreApplication.translate("Form", u"# Select an item and target and execute", None))
        self.label_9.setText(QCoreApplication.translate("Form", u"### Linear Spacing Joint ###", None))
        self.label_10.setText(QCoreApplication.translate("Form", u"Number :", None))
        self.label_11.setText(QCoreApplication.translate("Form", u"Axis :", None))
        self.LSJAxisCB.setItemText(0, QCoreApplication.translate("Form", u"x", None))
        self.LSJAxisCB.setItemText(1, QCoreApplication.translate("Form", u"y", None))
        self.LSJAxisCB.setItemText(2, QCoreApplication.translate("Form", u"z", None))
        self.LSJAxisCB.setItemText(3, QCoreApplication.translate("Form", u"-x", None))
        self.LSJAxisCB.setItemText(4, QCoreApplication.translate("Form", u"-y", None))
        self.LSJAxisCB.setItemText(5, QCoreApplication.translate("Form", u"-z", None))

        self.LSJBT.setText(QCoreApplication.translate("Form", u"LinearSpacingJoint", None))
        self.label_13.setText(QCoreApplication.translate("Form", u"# Execute after selecting the top joint", None))
    # retranslateUi

