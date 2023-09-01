# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface_action.ui'
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
        Form.resize(839, 1024)
        Form.setStyleSheet(u"")
        self.gridLayout_8 = QGridLayout(Form)
        self.gridLayout_8.setObjectName(u"gridLayout_8")
        self.gridLayout_8.setHorizontalSpacing(0)
        self.gridLayout_8.setContentsMargins(0, 0, 0, 0)
        self.frame = QFrame(Form)
        self.frame.setObjectName(u"frame")
        self.frame.setCursor(QCursor(Qt.ArrowCursor))
        self.frame.setStyleSheet(u"QFrame\n"
"{\n"
"border-radius: 5px;\n"
"background-color: rgb(27, 55, 69);\n"
"}\n"
"\n"
"QLabel\n"
"{\n"
"color: rgb(250, 250, 250, 220);\n"
"}\n"
"\n"
"QLineEdit:focus\n"
"{\n"
"background-color: rgb(0, 0, 0,50);\n"
"}\n"
"\n"
"QLineEdit\n"
"{\n"
"background-color: rgb(0, 0, 0,0);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 5px;\n"
"border-radius: 5px;\n"
"border-style: solid;\n"
"border-color: rgb(200, 200, 200, 0);\n"
"border-width: 1px;\n"
"}")
        self.frame.setFrameShape(QFrame.StyledPanel)
        self.frame.setFrameShadow(QFrame.Raised)
        self.gridLayout_2 = QGridLayout(self.frame)
        self.gridLayout_2.setSpacing(0)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.gridLayout_2.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout_10 = QHBoxLayout()
        self.horizontalLayout_10.setObjectName(u"horizontalLayout_10")
        self.horizontalSpacer_9 = QSpacerItem(10, 7, QSizePolicy.MinimumExpanding, QSizePolicy.Minimum)

        self.horizontalLayout_10.addItem(self.horizontalSpacer_9)

        self.resizeCorner = QPushButton(self.frame)
        self.resizeCorner.setObjectName(u"resizeCorner")
        self.resizeCorner.setMinimumSize(QSize(10, 10))
        self.resizeCorner.setMaximumSize(QSize(10, 10))
        self.resizeCorner.setCursor(QCursor(Qt.SizeFDiagCursor))
        self.resizeCorner.setAutoFillBackground(False)
        self.resizeCorner.setStyleSheet(u"QPushButton#resizeCorner\n"
"{\n"
"background-color: rgb(57, 85, 99,0);\n"
"border-radius: 10px;\n"
"}\n"
"\n"
"QPushButton#resizeCorner:hover\n"
"{\n"
"\n"
"background-color: rgb(57, 85, 99,0);\n"
"}\n"
"")

        self.horizontalLayout_10.addWidget(self.resizeCorner)


        self.gridLayout_2.addLayout(self.horizontalLayout_10, 2, 0, 1, 1)

        self.gridLayout_9 = QGridLayout()
        self.gridLayout_9.setSpacing(0)
        self.gridLayout_9.setObjectName(u"gridLayout_9")
        self.gridLayout_9.setSizeConstraint(QLayout.SetFixedSize)
        self.horizontalLayout_7 = QHBoxLayout()
        self.horizontalLayout_7.setSpacing(5)
        self.horizontalLayout_7.setObjectName(u"horizontalLayout_7")
        self.horizontalLayout_7.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.horizontalLayout_7.setContentsMargins(-1, 5, -1, 5)
        self.horizontalSpacer_7 = QSpacerItem(23, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_7.addItem(self.horizontalSpacer_7)

        self.bigIcon = QToolButton(self.frame)
        self.bigIcon.setObjectName(u"bigIcon")
        self.bigIcon.setMinimumSize(QSize(32, 32))
        self.bigIcon.setMaximumSize(QSize(32, 32))
        self.bigIcon.setCursor(QCursor(Qt.PointingHandCursor))
        self.bigIcon.setStyleSheet(u"")
        icon = QIcon()
        icon.addFile(u"icons/system/mainLogo@2x.png", QSize(), QIcon.Normal, QIcon.Off)
        self.bigIcon.setIcon(icon)
        self.bigIcon.setIconSize(QSize(32, 32))

        self.horizontalLayout_7.addWidget(self.bigIcon)

        self.horizontalSpacer_8 = QSpacerItem(15, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_7.addItem(self.horizontalSpacer_8)

        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setSpacing(0)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.verticalLayout_2.setContentsMargins(-1, 5, -1, -1)
        self.horizontalLayout_8 = QHBoxLayout()
        self.horizontalLayout_8.setSpacing(0)
        self.horizontalLayout_8.setObjectName(u"horizontalLayout_8")
        self.nameField = QLineEdit(self.frame)
        self.nameField.setObjectName(u"nameField")
        sizePolicy = QSizePolicy(QSizePolicy.MinimumExpanding, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.nameField.sizePolicy().hasHeightForWidth())
        self.nameField.setSizePolicy(sizePolicy)
        self.nameField.setMinimumSize(QSize(30, 35))
        self.nameField.setMaximumSize(QSize(800, 27))
        font = QFont()
        font.setPointSize(13)
        font.setBold(True)
        font.setWeight(75)
        self.nameField.setFont(font)
        self.nameField.setStyleSheet(u"background-color: rgb(0,0,0,0)")
        self.nameField.setFrame(False)

        self.horizontalLayout_8.addWidget(self.nameField)

        self.horizontalSpacer_3 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_8.addItem(self.horizontalSpacer_3)


        self.verticalLayout_2.addLayout(self.horizontalLayout_8)

        self.horizontalLayout_12 = QHBoxLayout()
        self.horizontalLayout_12.setSpacing(0)
        self.horizontalLayout_12.setObjectName(u"horizontalLayout_12")
        self.descriptionField = QLineEdit(self.frame)
        self.descriptionField.setObjectName(u"descriptionField")
        sizePolicy1 = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.MinimumExpanding)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.descriptionField.sizePolicy().hasHeightForWidth())
        self.descriptionField.setSizePolicy(sizePolicy1)
        self.descriptionField.setMinimumSize(QSize(100, 25))
        self.descriptionField.setMaximumSize(QSize(800, 30))
        self.descriptionField.setStyleSheet(u"background-color: rgb(0,0,0,0)")
        self.descriptionField.setFrame(False)

        self.horizontalLayout_12.addWidget(self.descriptionField)

        self.horizontalSpacer_13 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_12.addItem(self.horizontalSpacer_13)


        self.verticalLayout_2.addLayout(self.horizontalLayout_12)


        self.horizontalLayout_7.addLayout(self.verticalLayout_2)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setSpacing(0)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalLayout.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.closeButton = QPushButton(self.frame)
        self.closeButton.setObjectName(u"closeButton")
        self.closeButton.setMinimumSize(QSize(15, 15))
        self.closeButton.setMaximumSize(QSize(15, 15))
        self.closeButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.closeButton.setStyleSheet(u"")
        self.closeButton.setIconSize(QSize(9, 9))
        self.closeButton.setAutoExclusive(False)
        self.closeButton.setFlat(True)

        self.verticalLayout.addWidget(self.closeButton)

        self.verticalSpacer = QSpacerItem(20, 50, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout.addItem(self.verticalSpacer)


        self.horizontalLayout_7.addLayout(self.verticalLayout)


        self.gridLayout_9.addLayout(self.horizontalLayout_7, 0, 0, 1, 1)

        self.darkFrame = QFrame(self.frame)
        self.darkFrame.setObjectName(u"darkFrame")
        self.darkFrame.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: rgba(0, 0, 0, 53);\n"
"border-radius: 0px;\n"
"}\n"
"\n"
"QLabel\n"
"{\n"
"color: rgb(250, 250, 250, 220);\n"
"background-color: rgb(0, 0,0,0);\n"
"}")
        self.darkFrame.setFrameShape(QFrame.NoFrame)
        self.darkFrame.setFrameShadow(QFrame.Plain)
        self.verticalLayout_4 = QVBoxLayout(self.darkFrame)
        self.verticalLayout_4.setSpacing(8)
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.verticalLayout_4.setContentsMargins(0, 10, 20, 10)
        self.iconFieldFrame = QFrame(self.darkFrame)
        self.iconFieldFrame.setObjectName(u"iconFieldFrame")
        self.iconFieldFrame.setMinimumSize(QSize(0, 25))
        self.iconFieldFrame.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);")
        self.iconFieldFrame.setFrameShape(QFrame.StyledPanel)
        self.iconFieldFrame.setFrameShadow(QFrame.Raised)
        self.horizontalLayout_13 = QHBoxLayout(self.iconFieldFrame)
        self.horizontalLayout_13.setSpacing(5)
        self.horizontalLayout_13.setObjectName(u"horizontalLayout_13")
        self.horizontalLayout_13.setContentsMargins(0, 0, 0, 0)
        self.pushButton_5 = QPushButton(self.iconFieldFrame)
        self.pushButton_5.setObjectName(u"pushButton_5")
        self.pushButton_5.setMinimumSize(QSize(80, 0))
        self.pushButton_5.setMaximumSize(QSize(80, 16777215))
        self.pushButton_5.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);\n"
"color:  rgba(200, 200, 200);\n"
"text-align: right;")

        self.horizontalLayout_13.addWidget(self.pushButton_5)

        self.iconField = QLineEdit(self.iconFieldFrame)
        self.iconField.setObjectName(u"iconField")
        sizePolicy2 = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.Minimum)
        sizePolicy2.setHorizontalStretch(0)
        sizePolicy2.setVerticalStretch(0)
        sizePolicy2.setHeightForWidth(self.iconField.sizePolicy().hasHeightForWidth())
        self.iconField.setSizePolicy(sizePolicy2)
        self.iconField.setMinimumSize(QSize(50, 25))
        self.iconField.setMaximumSize(QSize(900, 25))
        self.iconField.setStyleSheet(u"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 5px;\n"
"border-bottom-left-radius: 5px;\n"
"border-top-left-radius: 5px;\n"
"border-bottom-right-radius: 0px;\n"
"border-top-right-radius: 0px;\n"
"")
        self.iconField.setFrame(False)

        self.horizontalLayout_13.addWidget(self.iconField)

        self.horizontalSpacer_4 = QSpacerItem(10, 25, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_13.addItem(self.horizontalSpacer_4)

        self.iconFieldCloseButton = QPushButton(self.iconFieldFrame)
        self.iconFieldCloseButton.setObjectName(u"iconFieldCloseButton")
        self.iconFieldCloseButton.setMinimumSize(QSize(90, 20))
        self.iconFieldCloseButton.setMaximumSize(QSize(40, 20))
        font1 = QFont()
        font1.setPointSize(10)
        self.iconFieldCloseButton.setFont(font1)
        self.iconFieldCloseButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,15);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 10px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_13.addWidget(self.iconFieldCloseButton)


        self.verticalLayout_4.addWidget(self.iconFieldFrame)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setSpacing(7)
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.pushButton = QPushButton(self.darkFrame)
        self.pushButton.setObjectName(u"pushButton")
        self.pushButton.setMinimumSize(QSize(80, 0))
        self.pushButton.setMaximumSize(QSize(80, 16777215))
        self.pushButton.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);\n"
"color:  rgba(200, 200, 200);\n"
"text-align: right;")

        self.horizontalLayout_4.addWidget(self.pushButton)

        self.tagsButtonLayout = QFrame(self.darkFrame)
        self.tagsButtonLayout.setObjectName(u"tagsButtonLayout")
        sizePolicy3 = QSizePolicy(QSizePolicy.Fixed, QSizePolicy.Fixed)
        sizePolicy3.setHorizontalStretch(0)
        sizePolicy3.setVerticalStretch(0)
        sizePolicy3.setHeightForWidth(self.tagsButtonLayout.sizePolicy().hasHeightForWidth())
        self.tagsButtonLayout.setSizePolicy(sizePolicy3)
        self.tagsButtonLayout.setMinimumSize(QSize(0, 25))
        self.tagsButtonLayout.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);")
        self.tagsButtonLayout.setFrameShape(QFrame.StyledPanel)
        self.tagsButtonLayout.setFrameShadow(QFrame.Raised)
        self.horizontalLayout_2 = QHBoxLayout(self.tagsButtonLayout)
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.horizontalLayout_2.setContentsMargins(0, 0, 0, 0)
        self.addTagButton = QPushButton(self.tagsButtonLayout)
        self.addTagButton.setObjectName(u"addTagButton")
        self.addTagButton.setMinimumSize(QSize(40, 20))
        self.addTagButton.setMaximumSize(QSize(40, 20))
        font2 = QFont()
        font2.setPointSize(11)
        self.addTagButton.setFont(font2)
        self.addTagButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,15);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 10px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_2.addWidget(self.addTagButton)

        self.horizontalSpacer = QSpacerItem(2, 25, QSizePolicy.MinimumExpanding, QSizePolicy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer)


        self.horizontalLayout_4.addWidget(self.tagsButtonLayout)

        self.tagsField = QLineEdit(self.darkFrame)
        self.tagsField.setObjectName(u"tagsField")
        sizePolicy4 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Fixed)
        sizePolicy4.setHorizontalStretch(0)
        sizePolicy4.setVerticalStretch(0)
        sizePolicy4.setHeightForWidth(self.tagsField.sizePolicy().hasHeightForWidth())
        self.tagsField.setSizePolicy(sizePolicy4)
        self.tagsField.setMinimumSize(QSize(100, 25))
        self.tagsField.setMaximumSize(QSize(1600, 25))
        self.tagsField.setBaseSize(QSize(900, 0))
        self.tagsField.setStyleSheet(u"")
        self.tagsField.setFrame(False)

        self.horizontalLayout_4.addWidget(self.tagsField)


        self.verticalLayout_4.addLayout(self.horizontalLayout_4)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setSpacing(6)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.pushButton_2 = QPushButton(self.darkFrame)
        self.pushButton_2.setObjectName(u"pushButton_2")
        self.pushButton_2.setMinimumSize(QSize(80, 0))
        self.pushButton_2.setMaximumSize(QSize(80, 16777215))
        self.pushButton_2.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);\n"
"color:  rgba(200, 200, 200);\n"
"text-align: right;")

        self.horizontalLayout_3.addWidget(self.pushButton_2)

        self.pathField = QComboBox(self.darkFrame)
        self.pathField.setObjectName(u"pathField")
        sizePolicy2.setHeightForWidth(self.pathField.sizePolicy().hasHeightForWidth())
        self.pathField.setSizePolicy(sizePolicy2)
        self.pathField.setMinimumSize(QSize(0, 25))
        self.pathField.setMaximumSize(QSize(1630, 25))
        self.pathField.setStyleSheet(u"QComboBox\n"
"{\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 4px;\n"
"border-radius: 5px;\n"
"}\n"
"\n"
"QComboBox QAbstractItemView {\n"
"color: rgb(200, 200, 200);\n"
"}\n"
"\n"
"QComboBox::item {\n"
"border: 0px solid black;\n"
"min-height: 35px; \n"
"}\n"
"\n"
"\n"
"/* #Items */\n"
"QListView::item {\n"
"min-height: 35px; \n"
"border: solid;\n"
"border-width:1;\n"
"}\n"
"\n"
"\n"
"\n"
"\n"
"\n"
"/* Button when open*/\n"
"\n"
"QComboBox:!editable:on, QComboBox::drop-down:editable:on {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 4px;\n"
"\n"
"}\n"
"\n"
"/* Normal arrow look*/\n"
"\n"
"QComboBox::down-arrow\n"
"{\n"
"	margin-top: 4px;\n"
"	border-left: 7px solid rgb(27, 42, 50,0);\n"
"	border-right: 7px solid rgb(27, 42, 50,0);\n"
"	border-bottom: 7px solid rgb(27, 42, 50,0);\n"
"	border-top: 6px solid  rgb(200,200, 200);\n"
"}\n"
"\n"
"/* Arrow on open*/\n"
"\n"
"QComboBox:down-arrow:on\n"
"{\n"
"	margin-bottom: 4px;\n"
"	"
                        "border-left: 7px solid rgb(27, 42, 50,0);\n"
"	border-right: 7px solid rgb(27, 42, 50,0);\n"
"	border-top: 7px solid rgb(27, 42, 50,0);\n"
"	border-bottom: 6px solid  rgb(200,200, 200);\n"
"}\n"
"\n"
"/* Arrow background */\n"
"\n"
"QComboBox::drop-down {\n"
"    subcontrol-origin: padding;\n"
"    subcontrol-position: top right;\n"
"	padding-right: 10px;\n"
"border-bottom-left-radius: 5px;\n"
"border-top-left-radius: 5px;\n"
"border-bottom-right-radius: 0px;\n"
"border-top-right-radius: 0px;\n"
"}\n"
"\n"
"\n"
"\n"
"\n"
"/* Scrollbar  */\n"
"QScrollBar:vertical\n"
"{\n"
"background-color: rgb(0, 0, 0,0);\n"
"width: 8px;\n"
"}\n"
"\n"
"/* Scrollbar background for top and bottom*/\n"
"QScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n"
"{\n"
"background-color: rgb(200,200, 200,100);\n"
"width: 6px;\n"
"}\n"
"\n"
"\n"
"/* The scrollbar itself*/\n"
"QScrollBar::handle:vertical \n"
"{\n"
"background-color: rgb(250,250,250,150);\n"
"border-radius: 4px;\n"
"width: 8px;\n"
"}\n"
"\n"
"/* Top and bottom arrow"
                        "s*/\n"
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

        self.horizontalLayout_3.addWidget(self.pathField)


        self.verticalLayout_4.addLayout(self.horizontalLayout_3)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setSpacing(6)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout_14 = QHBoxLayout()
        self.horizontalLayout_14.setSpacing(0)
        self.horizontalLayout_14.setObjectName(u"horizontalLayout_14")
        self.pushButton_3 = QPushButton(self.darkFrame)
        self.pushButton_3.setObjectName(u"pushButton_3")
        self.pushButton_3.setMinimumSize(QSize(80, 0))
        self.pushButton_3.setMaximumSize(QSize(80, 16777215))
        self.pushButton_3.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);\n"
"color:  rgba(200, 200, 200);\n"
"text-align: right;")

        self.horizontalLayout_14.addWidget(self.pushButton_3)

        self.horizontalSpacer_14 = QSpacerItem(7, 10, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_14.addItem(self.horizontalSpacer_14)

        self.listField = QComboBox(self.darkFrame)
        self.listField.setObjectName(u"listField")
        sizePolicy2.setHeightForWidth(self.listField.sizePolicy().hasHeightForWidth())
        self.listField.setSizePolicy(sizePolicy2)
        self.listField.setMinimumSize(QSize(0, 25))
        self.listField.setMaximumSize(QSize(1630, 25))
        self.listField.setStyleSheet(u"QComboBox\n"
"{\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 4px;\n"
"border-top-left-radius: 5px;\n"
"border-top-right-radius: 0px;\n"
"border-bottom-left-radius: 5px;\n"
"border-bottom-right-radius: 0px;\n"
"border-style: solid;\n"
"border-color: rgb(200, 200, 200, 0);\n"
"border-width: 1px;\n"
"}\n"
"\n"
"QComboBox QAbstractItemView {\n"
"color: rgb(200, 200, 200);\n"
"}\n"
"\n"
"QComboBox::item {\n"
"border: 0px solid black;\n"
"min-height: 35px; \n"
"}\n"
"\n"
"\n"
"/* #Items */\n"
"QListView::item {\n"
"min-height: 35px; \n"
"border: solid;\n"
"border-width:1;\n"
"}\n"
"\n"
"\n"
"\n"
"\n"
"\n"
"/* Button when open*/\n"
"\n"
"QComboBox:!editable:on, QComboBox::drop-down:editable:on {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 4px;\n"
"\n"
"}\n"
"\n"
"/* Normal arrow look*/\n"
"\n"
"QComboBox::down-arrow\n"
"{\n"
"	margin-top: 4px;\n"
"	border-left: 7px solid rgb(27, 42, 50,0);\n"
"	border-right: 7px solid rgb(27, 42, 5"
                        "0,0);\n"
"	border-bottom: 7px solid rgb(27, 42, 50,0);\n"
"	border-top: 6px solid  rgb(200,200, 200);\n"
"}\n"
"\n"
"/* Arrow on open*/\n"
"\n"
"QComboBox:down-arrow:on\n"
"{\n"
"	margin-bottom: 4px;\n"
"	border-left: 7px solid rgb(27, 42, 50,0);\n"
"	border-right: 7px solid rgb(27, 42, 50,0);\n"
"	border-top: 7px solid rgb(27, 42, 50,0);\n"
"	border-bottom: 6px solid  rgb(200,200, 200);\n"
"}\n"
"\n"
"/* Arrow background */\n"
"\n"
"QComboBox::drop-down {\n"
"    subcontrol-origin: padding;\n"
"    subcontrol-position: top right;\n"
"	padding-right: 10px;\n"
"border-bottom-left-radius: 5px;\n"
"border-top-left-radius: 5px;\n"
"border-bottom-right-radius: 0px;\n"
"border-top-right-radius: 0px;\n"
"}\n"
"\n"
"\n"
"\n"
"\n"
"/* Scrollbar  */\n"
"QScrollBar:vertical\n"
"{\n"
"background-color: rgb(0, 0, 0,0);\n"
"width: 8px;\n"
"}\n"
"\n"
"/* Scrollbar background for top and bottom*/\n"
"QScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n"
"{\n"
"background-color: rgb(200,200, 200,100);\n"
"width: 6px;\n"
""
                        "}\n"
"\n"
"\n"
"/* The scrollbar itself*/\n"
"QScrollBar::handle:vertical \n"
"{\n"
"background-color: rgb(250,250,250,150);\n"
"border-radius: 4px;\n"
"width: 8px;\n"
"}\n"
"\n"
"/* Top and bottom arrows*/\n"
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

        self.horizontalLayout_14.addWidget(self.listField)

        self.addCategoryButton = QPushButton(self.darkFrame)
        self.addCategoryButton.setObjectName(u"addCategoryButton")
        sizePolicy5 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Minimum)
        sizePolicy5.setHorizontalStretch(0)
        sizePolicy5.setVerticalStretch(0)
        sizePolicy5.setHeightForWidth(self.addCategoryButton.sizePolicy().hasHeightForWidth())
        self.addCategoryButton.setSizePolicy(sizePolicy5)
        self.addCategoryButton.setMinimumSize(QSize(0, 24))
        self.addCategoryButton.setMaximumSize(QSize(30, 24))
        self.addCategoryButton.setSizeIncrement(QSize(0, 20))
        self.addCategoryButton.setBaseSize(QSize(0, 0))
        font3 = QFont()
        font3.setPointSize(9)
        self.addCategoryButton.setFont(font3)
        self.addCategoryButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-top-left-radius: 0px;\n"
"border-top-right-radius: 5px;\n"
"border-bottom-left-radius: 0px;\n"
"border-bottom-right-radius: 5px;\n"
"padding-left: 5px;\n"
"padding-right: 5px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_14.addWidget(self.addCategoryButton)


        self.horizontalLayout.addLayout(self.horizontalLayout_14)


        self.verticalLayout_4.addLayout(self.horizontalLayout)

        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName(u"horizontalLayout_6")
        self.verticalLayout_5 = QVBoxLayout()
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.pushButton_4 = QPushButton(self.darkFrame)
        self.pushButton_4.setObjectName(u"pushButton_4")
        self.pushButton_4.setMinimumSize(QSize(80, 0))
        self.pushButton_4.setMaximumSize(QSize(80, 16777215))
        self.pushButton_4.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);\n"
"color:  rgba(200, 200, 200);\n"
"text-align: right;")

        self.verticalLayout_5.addWidget(self.pushButton_4)

        self.verticalSpacer_2 = QSpacerItem(20, 400, QSizePolicy.Minimum, QSizePolicy.Preferred)

        self.verticalLayout_5.addItem(self.verticalSpacer_2)


        self.horizontalLayout_6.addLayout(self.verticalLayout_5)

        self.scriptContentField = QPlainTextEdit(self.darkFrame)
        self.scriptContentField.setObjectName(u"scriptContentField")
        sizePolicy6 = QSizePolicy(QSizePolicy.MinimumExpanding, QSizePolicy.MinimumExpanding)
        sizePolicy6.setHorizontalStretch(0)
        sizePolicy6.setVerticalStretch(0)
        sizePolicy6.setHeightForWidth(self.scriptContentField.sizePolicy().hasHeightForWidth())
        self.scriptContentField.setSizePolicy(sizePolicy6)
        self.scriptContentField.setMinimumSize(QSize(0, 100))
        self.scriptContentField.setStyleSheet(u"QPlainTextEdit\n"
"{\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(180,180,180);\n"
"padding: 5px;\n"
"border-style: solid;\n"
"border-color: rgb(200, 200, 200, 0);\n"
"border-width: 1px;\n"
"}\n"
"/* Scrollbar  */\n"
"QScrollBar:vertical\n"
"{\n"
"background-color: rgb(0, 0, 0,50);\n"
"width: 8px;\n"
"}\n"
"\n"
"/* Scrollbar background for top and bottom*/\n"
"QScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n"
"{\n"
"background-color: rgb(200,200, 200,100);\n"
"width: 6px;\n"
"}\n"
"\n"
"\n"
"/* The scrollbar itself*/\n"
"QScrollBar::handle:vertical \n"
"{\n"
"background-color: rgb(250,250,250,150);\n"
"border-radius: 4px;\n"
"width: 8px;\n"
"}\n"
"\n"
"/* Top and bottom arrows*/\n"
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
        self.scriptContentField.setFrameShape(QFrame.NoFrame)
        self.scriptContentField.setFrameShadow(QFrame.Plain)

        self.horizontalLayout_6.addWidget(self.scriptContentField)


        self.verticalLayout_4.addLayout(self.horizontalLayout_6)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setSpacing(0)
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.pushButton_6 = QPushButton(self.darkFrame)
        self.pushButton_6.setObjectName(u"pushButton_6")
        self.pushButton_6.setMinimumSize(QSize(80, 0))
        self.pushButton_6.setMaximumSize(QSize(80, 16777215))
        self.pushButton_6.setStyleSheet(u"background-color: rgba(255, 255, 255, 0);\n"
"color:  rgba(200, 200, 200);\n"
"text-align: right;")

        self.horizontalLayout_5.addWidget(self.pushButton_6)

        self.horizontalSpacer_10 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_10)

        self.pythonButton = QRadioButton(self.darkFrame)
        self.pythonButton.setObjectName(u"pythonButton")
        self.pythonButton.setMinimumSize(QSize(0, 30))
        self.pythonButton.setMaximumSize(QSize(16777215, 30))
        self.pythonButton.setStyleSheet(u"QRadioButton\n"
"{\n"
"color: rgb(250,250,250,160);\n"
"background-color: rgb(0, 0, 0,0);\n"
"border-radius: 0px;\n"
"padding-left: 5px;\n"
"padding-right: 12px;\n"
"}\n"
"\n"
"QRadioButton::indicator {\n"
"width: 0px;\n"
"height: 0px;\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"\n"
"\n"
"QRadioButton::unchecked {\n"
"    background-color: rgb(0,0,0,10);\n"
"	color: rgb(250,250,250,160);\n"
"}\n"
"\n"
"QRadioButton:unchecked:hover {\n"
"    background-color: rgb(250,250,250,10);\n"
"	color: rgb(250,250,250,180);\n"
"}\n"
"\n"
"QRadioButton:unchecked:pressed {\n"
"    background-color: rgb(240, 240, 240,30);\n"
"}\n"
"\n"
"QRadioButton::checked {\n"
"	background-color: rgb(250,250,250,30);\n"
"}\n"
"\n"
"QRadioButton:checked:hover {\n"
"	color: rgb(250,250,250,230);\n"
"}\n"
"\n"
"QRadioButton:checked:pressed {\n"
"	color: rgb(250,250,250,250);\n"
"}\n"
"")
        self.pythonButton.setChecked(True)

        self.horizontalLayout_5.addWidget(self.pythonButton)

        self.melButton = QRadioButton(self.darkFrame)
        self.melButton.setObjectName(u"melButton")
        self.melButton.setMinimumSize(QSize(0, 30))
        self.melButton.setMaximumSize(QSize(16777215, 30))
        self.melButton.setStyleSheet(u"QRadioButton\n"
"{\n"
"color: rgb(250,250,250,160);\n"
"background-color: rgb(0, 0, 0,0);\n"
"border-radius: 0px;\n"
"padding-left: 5px;\n"
"padding-right: 12px;\n"
"}\n"
"\n"
"QRadioButton::indicator {\n"
"width: 0px;\n"
"height: 0px;\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"\n"
"\n"
"QRadioButton::unchecked {\n"
"    background-color: rgb(0,0,0,10);\n"
"	color: rgb(250,250,250,160);\n"
"}\n"
"\n"
"QRadioButton:unchecked:hover {\n"
"    background-color: rgb(250,250,250,10);\n"
"	color: rgb(250,250,250,180);\n"
"}\n"
"\n"
"QRadioButton:unchecked:pressed {\n"
"    background-color: rgb(240, 240, 240,30);\n"
"}\n"
"\n"
"QRadioButton::checked {\n"
"	background-color: rgb(250,250,250,30);\n"
"}\n"
"\n"
"QRadioButton:checked:hover {\n"
"	color: rgb(250,250,250,230);\n"
"}\n"
"\n"
"QRadioButton:checked:pressed {\n"
"	color: rgb(250,250,250,250);\n"
"}\n"
"")

        self.horizontalLayout_5.addWidget(self.melButton)

        self.horizontalSpacer_6 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_6)

        self.testPopup = QLabel(self.darkFrame)
        self.testPopup.setObjectName(u"testPopup")
        sizePolicy7 = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.Expanding)
        sizePolicy7.setHorizontalStretch(0)
        sizePolicy7.setVerticalStretch(0)
        sizePolicy7.setHeightForWidth(self.testPopup.sizePolicy().hasHeightForWidth())
        self.testPopup.setSizePolicy(sizePolicy7)
        self.testPopup.setMinimumSize(QSize(0, 20))
        self.testPopup.setMaximumSize(QSize(500, 20))
        self.testPopup.setStyleSheet(u"color: rgb(186, 49, 31,240);\n"
"")
        self.testPopup.setAlignment(Qt.AlignRight|Qt.AlignTrailing|Qt.AlignVCenter)
        self.testPopup.setWordWrap(False)

        self.horizontalLayout_5.addWidget(self.testPopup)

        self.openFolderButton = QPushButton(self.darkFrame)
        self.openFolderButton.setObjectName(u"openFolderButton")
        sizePolicy5.setHeightForWidth(self.openFolderButton.sizePolicy().hasHeightForWidth())
        self.openFolderButton.setSizePolicy(sizePolicy5)
        self.openFolderButton.setMinimumSize(QSize(0, 20))
        self.openFolderButton.setMaximumSize(QSize(140, 20))
        self.openFolderButton.setSizeIncrement(QSize(0, 20))
        self.openFolderButton.setBaseSize(QSize(0, 0))
        self.openFolderButton.setFont(font3)
        self.openFolderButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 5px;\n"
"padding-right: 5px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_5.addWidget(self.openFolderButton)

        self.horizontalSpacer_12 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_12)

        self.horizontalSpacer_11 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_11)

        self.testButton = QPushButton(self.darkFrame)
        self.testButton.setObjectName(u"testButton")
        sizePolicy5.setHeightForWidth(self.testButton.sizePolicy().hasHeightForWidth())
        self.testButton.setSizePolicy(sizePolicy5)
        self.testButton.setMinimumSize(QSize(0, 20))
        self.testButton.setMaximumSize(QSize(80, 20))
        self.testButton.setSizeIncrement(QSize(0, 20))
        self.testButton.setBaseSize(QSize(0, 0))
        self.testButton.setFont(font3)
        self.testButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 5px;\n"
"padding-right: 5px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_5.addWidget(self.testButton)


        self.verticalLayout_4.addLayout(self.horizontalLayout_5)


        self.gridLayout_9.addWidget(self.darkFrame, 1, 0, 1, 1)


        self.gridLayout_2.addLayout(self.gridLayout_9, 0, 0, 1, 1)

        self.horizontalLayout_9 = QHBoxLayout()
        self.horizontalLayout_9.setSpacing(0)
        self.horizontalLayout_9.setObjectName(u"horizontalLayout_9")
        self.horizontalLayout_9.setContentsMargins(10, 10, 10, -1)
        self.deleteButton = QPushButton(self.frame)
        self.deleteButton.setObjectName(u"deleteButton")
        self.deleteButton.setEnabled(True)
        self.deleteButton.setMinimumSize(QSize(0, 30))
        self.deleteButton.setMaximumSize(QSize(16777215, 30))
        self.deleteButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_9.addWidget(self.deleteButton)

        self.horizontalSpacer_15 = QSpacerItem(5, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.horizontalLayout_9.addItem(self.horizontalSpacer_15)

        self.duplicateButton = QPushButton(self.frame)
        self.duplicateButton.setObjectName(u"duplicateButton")
        self.duplicateButton.setEnabled(True)
        self.duplicateButton.setMinimumSize(QSize(0, 30))
        self.duplicateButton.setMaximumSize(QSize(16777215, 30))
        self.duplicateButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_9.addWidget(self.duplicateButton)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_9.addItem(self.horizontalSpacer_2)

        self.addPopup = QLabel(self.frame)
        self.addPopup.setObjectName(u"addPopup")
        sizePolicy7.setHeightForWidth(self.addPopup.sizePolicy().hasHeightForWidth())
        self.addPopup.setSizePolicy(sizePolicy7)
        self.addPopup.setMinimumSize(QSize(0, 30))
        self.addPopup.setMaximumSize(QSize(500, 30))
        self.addPopup.setStyleSheet(u"color: rgb(160, 160, 160);")
        self.addPopup.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.horizontalLayout_9.addWidget(self.addPopup)

        self.horizontalSpacer_5 = QSpacerItem(10, 10, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_9.addItem(self.horizontalSpacer_5)

        self.saveButton = QPushButton(self.frame)
        self.saveButton.setObjectName(u"saveButton")
        self.saveButton.setEnabled(True)
        self.saveButton.setMinimumSize(QSize(0, 30))
        self.saveButton.setMaximumSize(QSize(16777215, 30))
        self.saveButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_9.addWidget(self.saveButton)


        self.gridLayout_2.addLayout(self.horizontalLayout_9, 1, 0, 1, 1)


        self.gridLayout_8.addWidget(self.frame, 0, 0, 1, 1)

        QWidget.setTabOrder(self.nameField, self.descriptionField)
        QWidget.setTabOrder(self.descriptionField, self.addTagButton)
        QWidget.setTabOrder(self.addTagButton, self.pathField)
        QWidget.setTabOrder(self.pathField, self.scriptContentField)
        QWidget.setTabOrder(self.scriptContentField, self.pythonButton)
        QWidget.setTabOrder(self.pythonButton, self.melButton)
        QWidget.setTabOrder(self.melButton, self.saveButton)
        QWidget.setTabOrder(self.saveButton, self.deleteButton)
        QWidget.setTabOrder(self.deleteButton, self.resizeCorner)
        QWidget.setTabOrder(self.resizeCorner, self.tagsField)
        QWidget.setTabOrder(self.tagsField, self.bigIcon)
        QWidget.setTabOrder(self.bigIcon, self.closeButton)

        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.resizeCorner.setText("")
#if QT_CONFIG(tooltip)
        self.bigIcon.setToolTip(QCoreApplication.translate("Form", u"Set/Change icon for this Action", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.bigIcon.setStatusTip(QCoreApplication.translate("Form", u"Modify the Icon for this Action", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.bigIcon.setWhatsThis(QCoreApplication.translate("Form", u"Set/Change icon", None))
#endif // QT_CONFIG(whatsthis)
        self.bigIcon.setText("")
#if QT_CONFIG(statustip)
        self.nameField.setStatusTip(QCoreApplication.translate("Form", u"Name of your action", None))
#endif // QT_CONFIG(statustip)
        self.nameField.setText("")
        self.nameField.setPlaceholderText(QCoreApplication.translate("Form", u"Name", None))
#if QT_CONFIG(statustip)
        self.descriptionField.setStatusTip(QCoreApplication.translate("Form", u"Descripe your action", None))
#endif // QT_CONFIG(statustip)
        self.descriptionField.setText("")
        self.descriptionField.setPlaceholderText(QCoreApplication.translate("Form", u"Description", None))
        self.closeButton.setText("")
        self.pushButton_5.setText(QCoreApplication.translate("Form", u"Icon-Path:", None))
#if QT_CONFIG(statustip)
        self.iconField.setStatusTip(QCoreApplication.translate("Form", u"Specify a icon, if not in cosmos icon-folder it will be copied", None))
#endif // QT_CONFIG(statustip)
        self.iconField.setText("")
        self.iconField.setPlaceholderText(QCoreApplication.translate("Form", u"Path or icon-name", None))
#if QT_CONFIG(statustip)
        self.iconFieldCloseButton.setStatusTip(QCoreApplication.translate("Form", u"Close Tags field", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.iconFieldCloseButton.setWhatsThis(QCoreApplication.translate("Form", u"Add tags", None))
#endif // QT_CONFIG(whatsthis)
        self.iconFieldCloseButton.setText(QCoreApplication.translate("Form", u"Close field", None))
        self.pushButton.setText(QCoreApplication.translate("Form", u"Tags:", None))
#if QT_CONFIG(statustip)
        self.addTagButton.setStatusTip(QCoreApplication.translate("Form", u"Add new Tag", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.addTagButton.setWhatsThis(QCoreApplication.translate("Form", u"Add tags", None))
#endif // QT_CONFIG(whatsthis)
        self.addTagButton.setText(QCoreApplication.translate("Form", u"+", None))
#if QT_CONFIG(statustip)
        self.tagsField.setStatusTip(QCoreApplication.translate("Form", u"Add searchable tags", None))
#endif // QT_CONFIG(statustip)
        self.tagsField.setText("")
        self.tagsField.setPlaceholderText(QCoreApplication.translate("Form", u" Type to add tags...", None))
        self.pushButton_2.setText(QCoreApplication.translate("Form", u"Path:", None))
#if QT_CONFIG(statustip)
        self.pathField.setStatusTip(QCoreApplication.translate("Form", u"Choose a Path", None))
#endif // QT_CONFIG(statustip)
        self.pushButton_3.setText(QCoreApplication.translate("Form", u"Category:", None))
#if QT_CONFIG(statustip)
        self.listField.setStatusTip(QCoreApplication.translate("Form", u"Choose a Category", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(statustip)
        self.addCategoryButton.setStatusTip(QCoreApplication.translate("Form", u"Add new Category", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.addCategoryButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.addCategoryButton.setText(QCoreApplication.translate("Form", u"+", None))
        self.pushButton_4.setText(QCoreApplication.translate("Form", u"Code:", None))
#if QT_CONFIG(statustip)
        self.scriptContentField.setStatusTip(QCoreApplication.translate("Form", u"Main Code for this Action", None))
#endif // QT_CONFIG(statustip)
        self.scriptContentField.setPlainText("")
        self.scriptContentField.setPlaceholderText(QCoreApplication.translate("Form", u"Your script here", None))
        self.pushButton_6.setText(QCoreApplication.translate("Form", u"Type:", None))
#if QT_CONFIG(tooltip)
        self.pythonButton.setToolTip("")
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.pythonButton.setStatusTip(QCoreApplication.translate("Form", u"This action is an Python Action", None))
#endif // QT_CONFIG(statustip)
        self.pythonButton.setText(QCoreApplication.translate("Form", u" Python", None))
#if QT_CONFIG(statustip)
        self.melButton.setStatusTip(QCoreApplication.translate("Form", u"This action is an Mel Action", None))
#endif // QT_CONFIG(statustip)
        self.melButton.setText(QCoreApplication.translate("Form", u" Mel", None))
        self.testPopup.setText(QCoreApplication.translate("Form", u"Problem running script", None))
#if QT_CONFIG(statustip)
        self.openFolderButton.setStatusTip(QCoreApplication.translate("Form", u"Open the Actions location", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.openFolderButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.openFolderButton.setText(QCoreApplication.translate("Form", u"Open location", None))
#if QT_CONFIG(statustip)
        self.testButton.setStatusTip(QCoreApplication.translate("Form", u"Test this Action", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.testButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.testButton.setText(QCoreApplication.translate("Form", u"Test script", None))
#if QT_CONFIG(statustip)
        self.deleteButton.setStatusTip(QCoreApplication.translate("Form", u"Remove this Action", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.deleteButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.deleteButton.setText(QCoreApplication.translate("Form", u"Delete", None))
#if QT_CONFIG(statustip)
        self.duplicateButton.setStatusTip(QCoreApplication.translate("Form", u"Duplicate this Action", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.duplicateButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.duplicateButton.setText(QCoreApplication.translate("Form", u"Duplicate", None))
        self.addPopup.setText(QCoreApplication.translate("Form", u"Sucefully added script", None))
#if QT_CONFIG(statustip)
        self.saveButton.setStatusTip(QCoreApplication.translate("Form", u"Save changes to this Action", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.saveButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.saveButton.setText(QCoreApplication.translate("Form", u"Add Action", None))
    # retranslateUi

