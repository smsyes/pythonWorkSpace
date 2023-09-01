# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface_search.ui'
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
        Form.resize(463, 226)
        Form.setAutoFillBackground(False)
        self.gridLayout_2 = QGridLayout(Form)
        self.gridLayout_2.setSpacing(0)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.gridLayout_2.setSizeConstraint(QLayout.SetNoConstraint)
        self.gridLayout_2.setContentsMargins(0, 0, 0, 0)
        self.mainFrame = QFrame(Form)
        self.mainFrame.setObjectName(u"mainFrame")
        self.mainFrame.setCursor(QCursor(Qt.ArrowCursor))
        self.mainFrame.setAutoFillBackground(False)
        self.mainFrame.setStyleSheet(u"QFrame#mainFrame\n"
"{\n"
"background-color: rgb(27, 55, 69);\n"
"border-radius: 5px;\n"
"}")
        self.mainFrame.setFrameShape(QFrame.NoFrame)
        self.mainFrame.setFrameShadow(QFrame.Plain)
        self.gridLayout = QGridLayout(self.mainFrame)
        self.gridLayout.setSpacing(0)
        self.gridLayout.setObjectName(u"gridLayout")
        self.gridLayout.setSizeConstraint(QLayout.SetNoConstraint)
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.listWidget = QListWidget(self.mainFrame)
        self.listWidget.setObjectName(u"listWidget")
        self.listWidget.setMinimumSize(QSize(0, 1))
        self.listWidget.setStyleSheet(u"QListWidget\n"
"{\n"
"outline: 0;\n"
"background-color: rgb(0, 0, 0,0);\n"
"border-radius: 5px;\n"
"border: solid;\n"
"border-width:0;\n"
"}\n"
"\n"
"QListWidget::item\n"
"{\n"
"padding: -1px;\n"
"outline: 0;\n"
"border: solid;\n"
"border-width:0;\n"
"}\n"
"\n"
"QListWidget::item:hover\n"
"{\n"
"background-color: rgb(0,0,0,10);\n"
"}\n"
"\n"
"QListWidget::item:selected\n"
"{\n"
"padding: 0px;\n"
"background-color: rgb(52,104, 170,120);\n"
"border-radius: 1px;\n"
"}\n"
"\n"
"\n"
"/* Scrollbar  */\n"
"QScrollBar:vertical\n"
"{\n"
"background-color: rgb(0, 0, 0,0);\n"
"width: 8px;\n"
"padding: 0px 1px 0px 1px;\n"
"}\n"
"\n"
"/* Scrollbar background for top and bottom*/\n"
"QScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n"
"{\n"
"background-color: rgb(200,200, 200,100);\n"
"width: 2px;\n"
"}\n"
"\n"
"\n"
"/* The scrollbar itself*/\n"
"QScrollBar::handle:vertical \n"
"{\n"
"background-color: rgb(250,250,250,50);\n"
"border-radius: 3px;\n"
"width: 10px;\n"
"padding: 0px 0px 0px 0px;\n"
"}\n"
"\n"
"/* Top "
                        "and bottom arrows*/\n"
"QScrollBar::add-line:vertical,QScrollBar::sub-line:vertical {\n"
"width: 0px;\n"
"height: 0px;\n"
"}\n"
"\n"
"/* Scrollbar background for top and bottom*/\n"
"QScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n"
"{\n"
"background-color:  rgb(250, 250, 250,0);\n"
"}")
        self.listWidget.setFrameShape(QFrame.NoFrame)
        self.listWidget.setFrameShadow(QFrame.Plain)
        self.listWidget.setSizeAdjustPolicy(QAbstractScrollArea.AdjustToContents)

        self.gridLayout.addWidget(self.listWidget, 2, 0, 1, 1)

        self.infoBar = QWidget(self.mainFrame)
        self.infoBar.setObjectName(u"infoBar")
        self.infoBar.setMinimumSize(QSize(0, 20))
        self.infoBar.setMaximumSize(QSize(16777215, 20))
        self.infoBar.setStyleSheet(u"background-color: rgb(37, 75, 89);\n"
"border-top-left-radius: 10px;\n"
"border-top-right-radius: 10px;")
        self.horizontalLayout = QHBoxLayout(self.infoBar)
#ifndef Q_OS_MAC
        self.horizontalLayout.setSpacing(-1)
#endif
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.resultText = QLabel(self.infoBar)
        self.resultText.setObjectName(u"resultText")
        self.resultText.setMinimumSize(QSize(1, 0))
        self.resultText.setMaximumSize(QSize(1, 16777215))
        self.resultText.setStyleSheet(u"background-color: rgba(0, 0, 0, 0);\n"
"color: rgb(255, 255,255,100);")

        self.horizontalLayout.addWidget(self.resultText)

        self.spacerRight = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.spacerRight)


        self.gridLayout.addWidget(self.infoBar, 0, 0, 1, 1)

        self.searchTop = QHBoxLayout()
        self.searchTop.setSpacing(0)
        self.searchTop.setObjectName(u"searchTop")
        self.horizontalSpacer = QSpacerItem(8, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.searchTop.addItem(self.horizontalSpacer)

        self.mainIcon = QPushButton(self.mainFrame)
        self.mainIcon.setObjectName(u"mainIcon")
        self.mainIcon.setEnabled(True)
        self.mainIcon.setMinimumSize(QSize(30, 30))
        self.mainIcon.setMaximumSize(QSize(30, 30))
        self.mainIcon.setCursor(QCursor(Qt.OpenHandCursor))
        self.mainIcon.setStyleSheet(u"background-color: rgb(170, 255, 0,0);\n"
"border: solid;\n"
"border-width:0;\n"
"")
        self.mainIcon.setIconSize(QSize(32, 32))
        self.mainIcon.setFlat(True)

        self.searchTop.addWidget(self.mainIcon)

        self.textSpacer = QSpacerItem(5, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.searchTop.addItem(self.textSpacer)

        self.textHolder = QHBoxLayout()
        self.textHolder.setSpacing(0)
        self.textHolder.setObjectName(u"textHolder")
        self.textHolder.setContentsMargins(-1, -1, -1, 0)
        self.inputField = QLineEdit(self.mainFrame)
        self.inputField.setObjectName(u"inputField")
        sizePolicy = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.inputField.sizePolicy().hasHeightForWidth())
        self.inputField.setSizePolicy(sizePolicy)
        self.inputField.setMinimumSize(QSize(1, 45))
        self.inputField.setMaximumSize(QSize(16777215, 45))
        font = QFont()
        font.setPointSize(13)
        self.inputField.setFont(font)
        self.inputField.setStyleSheet(u"QLineEdit\n"
"{\n"
"background-color: rgba(0, 0, 0, 0);\n"
"border-radius: 0px;\n"
"border-style: None;\n"
"color: rgb(255, 255,255,200);\n"
"}\n"
"\n"
"QLineEdit:Hover\n"
"{\n"
"color: rgb(255, 255,255,230);\n"
"}")
        self.inputField.setAlignment(Qt.AlignCenter)

        self.textHolder.addWidget(self.inputField)

        self.infofield = QPushButton(self.mainFrame)
        self.infofield.setObjectName(u"infofield")
        sizePolicy1 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Fixed)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.infofield.sizePolicy().hasHeightForWidth())
        self.infofield.setSizePolicy(sizePolicy1)
        self.infofield.setMinimumSize(QSize(0, 45))
        self.infofield.setMaximumSize(QSize(16777215, 45))
        self.infofield.setFont(font)
        self.infofield.setCursor(QCursor(Qt.ArrowCursor))
        self.infofield.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgba(0, 0, 0,0);\n"
"border-radius: 0px;\n"
"border-style: None;\n"
"color: rgb(250, 250,255,80);\n"
"text-align: left;\n"
"\n"
"}")

        self.textHolder.addWidget(self.infofield)


        self.searchTop.addLayout(self.textHolder)

        self.horizontalSpacer_2 = QSpacerItem(1, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.searchTop.addItem(self.horizontalSpacer_2)


        self.gridLayout.addLayout(self.searchTop, 1, 0, 1, 1)


        self.gridLayout_2.addWidget(self.mainFrame, 0, 0, 1, 1)

        QWidget.setTabOrder(self.inputField, self.mainIcon)

        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.resultText.setText(QCoreApplication.translate("Form", u"  0 items", None))
        self.mainIcon.setText("")
        self.inputField.setText("")
        self.inputField.setPlaceholderText(QCoreApplication.translate("Form", u"Type to search...", None))
        self.infofield.setText("")
    # retranslateUi

