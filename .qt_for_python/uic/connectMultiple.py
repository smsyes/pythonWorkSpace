# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'connectMultiple.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_form(object):
    def setupUi(self, form):
        if not form.objectName():
            form.setObjectName(u"form")
        form.resize(690, 524)
        form.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: rgb(47, 47, 47);\n"
"}\n"
"\n"
"QLabel, QCheckBox\n"
"{\n"
"color: rgb(250, 250, 250);\n"
"}\n"
"\n"
"\n"
"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250, 250, 250, 50);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5;\n"
"padding: 4px;\n"
"}\n"
"\n"
"\n"
"QPushButton::hover\n"
"{\n"
"background-color: rgb(250, 250, 250, 70);\n"
"}\n"
"\n"
"\n"
"QPushButton::disabled\n"
"{\n"
"background-color: rgb(250, 250, 250, 20);\n"
"color: rgb(250, 250, 250, 100);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(250, 250, 250, 30);\n"
"}\n"
"\n"
"\n"
"\n"
"QListWidget\n"
"{\n"
"background-color: rgb(0, 0, 0, 50);\n"
"color: rgb(220, 220, 220);\n"
"padding: 5px;\n"
"border-radius: 5;\n"
"\n"
"}\n"
"\n"
"QListWidget::item:selected\n"
"{\n"
"background-color: rgb(250, 250, 250, 50);\n"
"}\n"
"\n"
"\n"
"\n"
"\n"
"\n"
"QScrollBar:vertical \n"
"{\n"
"background-color: rgb(250, 250, 250, 50);\n"
"width: 10px;\n"
"border: 0px solid black;\n"
"border-radius: 7px;"
                        "\n"
"}\n"
"\n"
"\n"
"QScrollBar::handle:vertical {\n"
"\n"
"background-color: #355868;\n"
"border-radius: 7px;\n"
"\n"
"}")
        form.setFrameShape(QFrame.StyledPanel)
        form.setFrameShadow(QFrame.Raised)
        self.gridLayout = QGridLayout(form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setSpacing(2)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setSpacing(10)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.masterLabel_3 = QLabel(form)
        self.masterLabel_3.setObjectName(u"masterLabel_3")
        self.masterLabel_3.setMinimumSize(QSize(0, 20))
        self.masterLabel_3.setMaximumSize(QSize(40, 16777215))
        self.masterLabel_3.setStyleSheet(u"color: rgb(250, 250, 250, 100);")

        self.horizontalLayout_3.addWidget(self.masterLabel_3)

        self.masterObjectText = QPushButton(form)
        self.masterObjectText.setObjectName(u"masterObjectText")
        self.masterObjectText.setStyleSheet(u"QPushButton\n"
"{\n"
"text-align: left;\n"
"border-radius: 10px;\n"
"background-color: rgb(250,250,250, 0);\n"
"color: rgb(250,250,250,150);\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"background-color: rgb(250,250,250, 20);\n"
"}\n"
"\n"
"QPushButton::pressed\n"
"{\n"
"background-color: rgb(250,250,250, 40);\n"
"}")
        self.masterObjectText.setFlat(True)

        self.horizontalLayout_3.addWidget(self.masterObjectText)


        self.verticalLayout.addLayout(self.horizontalLayout_3)

        self.masterButton = QPushButton(form)
        self.masterButton.setObjectName(u"masterButton")
        self.masterButton.setAutoFillBackground(False)
        self.masterButton.setStyleSheet(u"")

        self.verticalLayout.addWidget(self.masterButton)

        self.masterList = QListWidget(form)
        self.masterList.setObjectName(u"masterList")
        font = QFont()
        font.setPointSize(10)
        self.masterList.setFont(font)
        self.masterList.setStyleSheet(u"")
        self.masterList.setFrameShape(QFrame.NoFrame)
        self.masterList.setFrameShadow(QFrame.Plain)
        self.masterList.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.masterList.setSelectionMode(QAbstractItemView.ExtendedSelection)

        self.verticalLayout.addWidget(self.masterList)


        self.horizontalLayout_2.addLayout(self.verticalLayout)

        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setSpacing(10)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.masterLabel_6 = QLabel(form)
        self.masterLabel_6.setObjectName(u"masterLabel_6")
        self.masterLabel_6.setMaximumSize(QSize(20, 16777215))
        self.masterLabel_6.setStyleSheet(u"color: rgb(250, 250, 250, 100);")

        self.horizontalLayout_5.addWidget(self.masterLabel_6)

        self.targetObjectsText = QPushButton(form)
        self.targetObjectsText.setObjectName(u"targetObjectsText")
        self.targetObjectsText.setStyleSheet(u"QPushButton\n"
"{\n"
"text-align: left;\n"
"border-radius: 10px;\n"
"background-color: rgb(250,250,250, 0);\n"
"color: rgb(250,250,250,150);\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"background-color: rgb(250,250,250, 20);\n"
"}\n"
"\n"
"QPushButton::pressed\n"
"{\n"
"background-color: rgb(250,250,250, 40);\n"
"}")
        self.targetObjectsText.setFlat(True)

        self.horizontalLayout_5.addWidget(self.targetObjectsText)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_2)


        self.verticalLayout_2.addLayout(self.horizontalLayout_5)

        self.objectButton = QPushButton(form)
        self.objectButton.setObjectName(u"objectButton")
        self.objectButton.setStyleSheet(u"")

        self.verticalLayout_2.addWidget(self.objectButton)

        self.objectsList = QListWidget(form)
        self.objectsList.setObjectName(u"objectsList")
        self.objectsList.setFont(font)
        self.objectsList.setStyleSheet(u"")
        self.objectsList.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.objectsList.setSelectionMode(QAbstractItemView.ExtendedSelection)

        self.verticalLayout_2.addWidget(self.objectsList)


        self.horizontalLayout_2.addLayout(self.verticalLayout_2)


        self.gridLayout.addLayout(self.horizontalLayout_2, 0, 0, 1, 1)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.masterLabel_4 = QLabel(form)
        self.masterLabel_4.setObjectName(u"masterLabel_4")
        self.masterLabel_4.setStyleSheet(u"")

        self.horizontalLayout_4.addWidget(self.masterLabel_4)

        self.sorting = QComboBox(form)
        self.sorting.addItem("")
        self.sorting.addItem("")
        self.sorting.setObjectName(u"sorting")
        self.sorting.setStyleSheet(u"")

        self.horizontalLayout_4.addWidget(self.sorting)


        self.horizontalLayout.addLayout(self.horizontalLayout_4)

        self.keyableOnly = QCheckBox(form)
        self.keyableOnly.setObjectName(u"keyableOnly")
        self.keyableOnly.setStyleSheet(u"")
        self.keyableOnly.setChecked(True)

        self.horizontalLayout.addWidget(self.keyableOnly)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer)

        self.reverseValues = QCheckBox(form)
        self.reverseValues.setObjectName(u"reverseValues")
        self.reverseValues.setStyleSheet(u"")

        self.horizontalLayout.addWidget(self.reverseValues)

        self.multiplyValues = QCheckBox(form)
        self.multiplyValues.setObjectName(u"multiplyValues")
        self.multiplyValues.setStyleSheet(u"")

        self.horizontalLayout.addWidget(self.multiplyValues)

        self.multiplyValuesNumber = QDoubleSpinBox(form)
        self.multiplyValuesNumber.setObjectName(u"multiplyValuesNumber")
        self.multiplyValuesNumber.setMinimum(-999.990000000000009)
        self.multiplyValuesNumber.setMaximum(999.990000000000009)
        self.multiplyValuesNumber.setValue(0.500000000000000)

        self.horizontalLayout.addWidget(self.multiplyValuesNumber)


        self.gridLayout.addLayout(self.horizontalLayout, 1, 0, 1, 1)

        self.connectbutton = QPushButton(form)
        self.connectbutton.setObjectName(u"connectbutton")
        self.connectbutton.setEnabled(True)
        self.connectbutton.setStyleSheet(u"")

        self.gridLayout.addWidget(self.connectbutton, 2, 0, 1, 1)


        self.retranslateUi(form)

        QMetaObject.connectSlotsByName(form)
    # setupUi

    def retranslateUi(self, form):
        form.setWindowTitle(QCoreApplication.translate("form", u"Frame", None))
        self.masterLabel_3.setText(QCoreApplication.translate("form", u"From:", None))
        self.masterObjectText.setText(QCoreApplication.translate("form", u"No master specified", None))
        self.masterButton.setText(QCoreApplication.translate("form", u"Input", None))
        self.masterLabel_6.setText(QCoreApplication.translate("form", u"To:", None))
        self.targetObjectsText.setText(QCoreApplication.translate("form", u"No objects specified", None))
        self.objectButton.setText(QCoreApplication.translate("form", u"Output [Multiple]", None))
        self.masterLabel_4.setText(QCoreApplication.translate("form", u"Sorting:", None))
        self.sorting.setItemText(0, QCoreApplication.translate("form", u"Default", None))
        self.sorting.setItemText(1, QCoreApplication.translate("form", u"Alphabetical", None))

        self.keyableOnly.setText(QCoreApplication.translate("form", u"Keyable only", None))
        self.reverseValues.setText(QCoreApplication.translate("form", u"Reverse connection", None))
        self.multiplyValues.setText(QCoreApplication.translate("form", u"Multiply connection", None))
        self.connectbutton.setText(QCoreApplication.translate("form", u"Connect", None))
    # retranslateUi

