# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'FKIKSnapBakeToolZtvFpL.ui'
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
        Form.resize(514, 317)
        self.gridLayout_3 = QGridLayout(Form)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.author = QLabel(Form)
        self.author.setObjectName(u"author")
        self.author.setAlignment(Qt.AlignCenter)

        self.gridLayout_3.addWidget(self.author, 1, 0, 1, 1)

        self.tabWidget = QTabWidget(Form)
        self.tabWidget.setObjectName(u"tabWidget")
        self.Registertab = QWidget()
        self.Registertab.setObjectName(u"Registertab")
        self.gridLayout = QGridLayout(self.Registertab)
        self.gridLayout.setObjectName(u"gridLayout")
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.horizontalSpacer_4 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_4)

        self.label_2 = QLabel(self.Registertab)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout_2.addWidget(self.label_2)

        self.horizontalSpacer_5 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_5)

        self.label_7 = QLabel(self.Registertab)
        self.label_7.setObjectName(u"label_7")

        self.verticalLayout_2.addWidget(self.label_7)

        self.label_3 = QLabel(self.Registertab)
        self.label_3.setObjectName(u"label_3")

        self.verticalLayout_2.addWidget(self.label_3)

        self.label_8 = QLabel(self.Registertab)
        self.label_8.setObjectName(u"label_8")

        self.verticalLayout_2.addWidget(self.label_8)

        self.label_9 = QLabel(self.Registertab)
        self.label_9.setObjectName(u"label_9")

        self.verticalLayout_2.addWidget(self.label_9)

        self.horizontalSpacer_6 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_6)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.FKradioButton = QRadioButton(self.Registertab)
        self.FKradioButton.setObjectName(u"FKradioButton")
        self.FKradioButton.setChecked(True)

        self.horizontalLayout_3.addWidget(self.FKradioButton)

        self.IKradioButton = QRadioButton(self.Registertab)
        self.IKradioButton.setObjectName(u"IKradioButton")

        self.horizontalLayout_3.addWidget(self.IKradioButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_3)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.registrationpushButton = QPushButton(self.Registertab)
        self.registrationpushButton.setObjectName(u"registrationpushButton")

        self.horizontalLayout_4.addWidget(self.registrationpushButton)

        self.deletepushButton = QPushButton(self.Registertab)
        self.deletepushButton.setObjectName(u"deletepushButton")

        self.horizontalLayout_4.addWidget(self.deletepushButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_4)


        self.gridLayout.addLayout(self.verticalLayout_2, 0, 0, 1, 1)

        self.tabWidget.addTab(self.Registertab, "")
        self.Snaptab = QWidget()
        self.Snaptab.setObjectName(u"Snaptab")
        self.gridLayout_2 = QGridLayout(self.Snaptab)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalSpacer_2 = QSpacerItem(401, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_2)

        self.label = QLabel(self.Snaptab)
        self.label.setObjectName(u"label")
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.horizontalSpacer = QSpacerItem(401, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer)

        self.label_6 = QLabel(self.Snaptab)
        self.label_6.setObjectName(u"label_6")

        self.verticalLayout.addWidget(self.label_6)

        self.horizontalSpacer_3 = QSpacerItem(401, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_3)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.IKtoFKradioButton = QRadioButton(self.Snaptab)
        self.IKtoFKradioButton.setObjectName(u"IKtoFKradioButton")
        self.IKtoFKradioButton.setChecked(True)

        self.horizontalLayout.addWidget(self.IKtoFKradioButton)

        self.FKtoIKradioButton = QRadioButton(self.Snaptab)
        self.FKtoIKradioButton.setObjectName(u"FKtoIKradioButton")

        self.horizontalLayout.addWidget(self.FKtoIKradioButton)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.SnappushButton = QPushButton(self.Snaptab)
        self.SnappushButton.setObjectName(u"SnappushButton")

        self.horizontalLayout_2.addWidget(self.SnappushButton)

        self.SnapBakepushButton = QPushButton(self.Snaptab)
        self.SnapBakepushButton.setObjectName(u"SnapBakepushButton")

        self.horizontalLayout_2.addWidget(self.SnapBakepushButton)


        self.verticalLayout.addLayout(self.horizontalLayout_2)


        self.gridLayout_2.addLayout(self.verticalLayout, 0, 0, 1, 1)

        self.tabWidget.addTab(self.Snaptab, "")

        self.gridLayout_3.addWidget(self.tabWidget, 0, 0, 1, 1)

        self.update = QLabel(Form)
        self.update.setObjectName(u"update")
        self.update.setAlignment(Qt.AlignCenter)

        self.gridLayout_3.addWidget(self.update, 2, 0, 1, 1)


        self.retranslateUi(Form)

        self.tabWidget.setCurrentIndex(1)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.author.setText(QCoreApplication.translate("Form", u"__AUTHOR__ = 'MinSung'", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Register IK or FK.", None))
        self.label_7.setText(QCoreApplication.translate("Form", u"!! It operates on the FK IK Switching structure consisting of three joints.", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"Register IK : Please select in the order of FKJnts(St,Md,En), IKCTRL, IKPV, Input", None))
        self.label_8.setText(QCoreApplication.translate("Form", u"Register FK : Please select in the order of FKCtrl(St,Md,En), IKJnts(St,Md,En), Input", None))
        self.label_9.setText(QCoreApplication.translate("Form", u"The snapitem is registered with the last selected input.", None))
        self.FKradioButton.setText(QCoreApplication.translate("Form", u"FK", None))
        self.IKradioButton.setText(QCoreApplication.translate("Form", u"IK", None))
        self.registrationpushButton.setText(QCoreApplication.translate("Form", u"Registration", None))
        self.deletepushButton.setText(QCoreApplication.translate("Form", u"Delete", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Registertab), QCoreApplication.translate("Form", u"Register", None))
        self.label.setText(QCoreApplication.translate("Form", u"FK IK Snap Bake Tool", None))
        self.label_6.setText(QCoreApplication.translate("Form", u"Select the pre-registered input, check the setting, and run it.", None))
        self.IKtoFKradioButton.setText(QCoreApplication.translate("Form", u"IKtoFK", None))
        self.FKtoIKradioButton.setText(QCoreApplication.translate("Form", u"FKtoIK", None))
        self.SnappushButton.setText(QCoreApplication.translate("Form", u"Snap", None))
        self.SnapBakepushButton.setText(QCoreApplication.translate("Form", u"SnapBake", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.Snaptab), QCoreApplication.translate("Form", u"Snap", None))
        self.update.setText(QCoreApplication.translate("Form", u"__UPDATE__ = 20230111", None))
    # retranslateUi

