# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'poseReaderV01.ui'
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
        Form.resize(228, 168)
        self.verticalLayout = QVBoxLayout(Form)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.label_4 = QLabel(Form)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_4)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.label_3 = QLabel(Form)
        self.label_3.setObjectName(u"label_3")

        self.horizontalLayout_3.addWidget(self.label_3)

        self.AxisCB = QComboBox(Form)
        self.AxisCB.addItem("")
        self.AxisCB.addItem("")
        self.AxisCB.addItem("")
        self.AxisCB.setObjectName(u"AxisCB")

        self.horizontalLayout_3.addWidget(self.AxisCB)


        self.verticalLayout.addLayout(self.horizontalLayout_3)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.label = QLabel(Form)
        self.label.setObjectName(u"label")

        self.horizontalLayout_4.addWidget(self.label)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.VecXCK = QCheckBox(Form)
        self.VecXCK.setObjectName(u"VecXCK")
        self.VecXCK.setChecked(True)

        self.horizontalLayout_2.addWidget(self.VecXCK)

        self.VecYCK = QCheckBox(Form)
        self.VecYCK.setObjectName(u"VecYCK")
        self.VecYCK.setChecked(True)

        self.horizontalLayout_2.addWidget(self.VecYCK)

        self.VecZCK = QCheckBox(Form)
        self.VecZCK.setObjectName(u"VecZCK")
        self.VecZCK.setChecked(True)

        self.horizontalLayout_2.addWidget(self.VecZCK)


        self.horizontalLayout_4.addLayout(self.horizontalLayout_2)


        self.verticalLayout.addLayout(self.horizontalLayout_4)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")

        self.horizontalLayout_5.addWidget(self.label_2)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.RVecXCK = QCheckBox(Form)
        self.RVecXCK.setObjectName(u"RVecXCK")
        self.RVecXCK.setChecked(True)

        self.horizontalLayout.addWidget(self.RVecXCK)

        self.RVecYCK = QCheckBox(Form)
        self.RVecYCK.setObjectName(u"RVecYCK")
        self.RVecYCK.setChecked(True)

        self.horizontalLayout.addWidget(self.RVecYCK)

        self.RVecZCK = QCheckBox(Form)
        self.RVecZCK.setObjectName(u"RVecZCK")
        self.RVecZCK.setChecked(True)

        self.horizontalLayout.addWidget(self.RVecZCK)


        self.horizontalLayout_5.addLayout(self.horizontalLayout)


        self.verticalLayout.addLayout(self.horizontalLayout_5)

        self.createPB = QPushButton(Form)
        self.createPB.setObjectName(u"createPB")

        self.verticalLayout.addWidget(self.createPB)

        self.removePB = QPushButton(Form)
        self.removePB.setObjectName(u"removePB")

        self.verticalLayout.addWidget(self.removePB)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"Pose Reader", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"Axis : ", None))
        self.AxisCB.setItemText(0, QCoreApplication.translate("Form", u"x", None))
        self.AxisCB.setItemText(1, QCoreApplication.translate("Form", u"y", None))
        self.AxisCB.setItemText(2, QCoreApplication.translate("Form", u"z", None))

        self.label.setText(QCoreApplication.translate("Form", u"Vector : ", None))
        self.VecXCK.setText(QCoreApplication.translate("Form", u"x", None))
        self.VecYCK.setText(QCoreApplication.translate("Form", u"y", None))
        self.VecZCK.setText(QCoreApplication.translate("Form", u"z", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Reverse Vector : ", None))
        self.RVecXCK.setText(QCoreApplication.translate("Form", u"x", None))
        self.RVecYCK.setText(QCoreApplication.translate("Form", u"y", None))
        self.RVecZCK.setText(QCoreApplication.translate("Form", u"z", None))
        self.createPB.setText(QCoreApplication.translate("Form", u"Create", None))
        self.removePB.setText(QCoreApplication.translate("Form", u"Remove", None))
    # retranslateUi

