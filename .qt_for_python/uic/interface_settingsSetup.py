# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface_settingsSetup.ui'
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
        Form.resize(632, 489)
        Form.setStyleSheet(u"QCheckBox\n"
"{\n"
"color: rgb(153, 171, 194);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox::indicator {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 3px;\n"
"}\n"
"\n"
"\n"
"QCheckBox::indicator::unchecked {\n"
"    background-color: rgb(0,0,0,50);\n"
"}\n"
"\n"
"QCheckBox::indicator:unchecked:hover {\n"
"    background-color: rgb(0,0,0,40);\n"
"}\n"
"\n"
"QCheckBox::indicator:unchecked:pressed {\n"
"    background-color: rgb(240, 240, 240,150);\n"
"}\n"
"\n"
"QCheckBox::indicator::checked {\n"
"    background-color: rgb(240, 240, 240,220);\n"
"}\n"
"\n"
"QCheckBox::indicator:checked:hover {\n"
"	background-color: rgb(240, 240, 240,230);\n"
"}\n"
"\n"
"QCheckBox::indicator:checked:pressed {\n"
"    background-color: rgb(240, 240, 240,240);\n"
"}\n"
"\n"
"\n"
"\n"
"QRadioButton\n"
"{\n"
"color: rgb(153, 171, 194);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QRadioButton::indicator {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(250, 250, 250)"
                        ";\n"
"border-radius: 6px;\n"
"}\n"
"\n"
"\n"
"QRadioButton::indicator::unchecked {\n"
"    background-color: rgb(0,0,0,50);\n"
"}\n"
"\n"
"QRadioButton::indicator:unchecked:hover {\n"
"    background-color: rgb(0,0,0,40);\n"
"}\n"
"\n"
"QRadioButton::indicator:unchecked:pressed {\n"
"    background-color: rgb(240, 240, 240,150);\n"
"}\n"
"\n"
"QRadioButton::indicator::checked {\n"
"    background-color: rgb(240, 240, 240,220);\n"
"}\n"
"\n"
"QRadioButton::indicator:checked:hover {\n"
"	background-color: rgb(240, 240, 240,230);\n"
"}\n"
"\n"
"QRadioButton::indicator:checked:pressed {\n"
"    background-color: rgb(240, 240, 240,240);\n"
"}\n"
"\n"
"\n"
"")
        self.gridLayout_4 = QGridLayout(Form)
        self.gridLayout_4.setSpacing(0)
        self.gridLayout_4.setObjectName(u"gridLayout_4")
        self.gridLayout_4.setContentsMargins(0, 0, 0, 0)
        self.widget = QWidget(Form)
        self.widget.setObjectName(u"widget")
        self.widget.setCursor(QCursor(Qt.OpenHandCursor))
        self.widget.setAutoFillBackground(False)
        self.widget.setStyleSheet(u"QLabel\n"
"{\n"
"color: rgb(183, 191, 224);\n"
"background-color: rgb(250, 0,0,250);\n"
"}")
        self.gridLayout = QGridLayout(self.widget)
        self.gridLayout.setSpacing(0)
        self.gridLayout.setObjectName(u"gridLayout")
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.frame = QFrame(self.widget)
        self.frame.setObjectName(u"frame")
        self.frame.setStyleSheet(u"border-radius: 5px;\n"
"background-color: rgb(27, 55, 69);\n"
"")
        self.frame.setFrameShape(QFrame.NoFrame)
        self.frame.setFrameShadow(QFrame.Raised)
        self.verticalLayout_5 = QVBoxLayout(self.frame)
        self.verticalLayout_5.setSpacing(0)
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.verticalLayout_5.setContentsMargins(0, 5, 0, 0)
        self.topLayout_2 = QHBoxLayout()
        self.topLayout_2.setSpacing(0)
        self.topLayout_2.setObjectName(u"topLayout_2")
        self.topLayout_2.setSizeConstraint(QLayout.SetMaximumSize)
        self.horizontalSpacer_29 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.topLayout_2.addItem(self.horizontalSpacer_29)

        self.smallLogo = QToolButton(self.frame)
        self.smallLogo.setObjectName(u"smallLogo")
        self.smallLogo.setMinimumSize(QSize(32, 32))
        self.smallLogo.setMaximumSize(QSize(32, 32))
        icon = QIcon()
        icon.addFile(u"icons/system/mainLogo@2x.png", QSize(), QIcon.Normal, QIcon.Off)
        self.smallLogo.setIcon(icon)
        self.smallLogo.setIconSize(QSize(30, 30))

        self.topLayout_2.addWidget(self.smallLogo)

        self.horizontalSpacer_7 = QSpacerItem(5, 5, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.topLayout_2.addItem(self.horizontalSpacer_7)

        self.title = QLabel(self.frame)
        self.title.setObjectName(u"title")
        sizePolicy = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.title.sizePolicy().hasHeightForWidth())
        self.title.setSizePolicy(sizePolicy)
        self.title.setMinimumSize(QSize(0, 30))
        self.title.setMaximumSize(QSize(16777215, 30))
        font = QFont()
        font.setPointSize(15)
        self.title.setFont(font)
        self.title.setStyleSheet(u"color: rgb(153, 171, 194);")
        self.title.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.topLayout_2.addWidget(self.title)

        self.horizontalSpacer_6 = QSpacerItem(5, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.topLayout_2.addItem(self.horizontalSpacer_6)

        self.versionText = QLabel(self.frame)
        self.versionText.setObjectName(u"versionText")
        self.versionText.setMinimumSize(QSize(0, 30))
        self.versionText.setMaximumSize(QSize(16777215, 30))
        font1 = QFont()
        font1.setPointSize(12)
        self.versionText.setFont(font1)
        self.versionText.setStyleSheet(u"color: rgb(123, 141, 164);")

        self.topLayout_2.addWidget(self.versionText)

        self.horizontalSpacer = QSpacerItem(30, 10, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.topLayout_2.addItem(self.horizontalSpacer)

        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setSpacing(0)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.verticalLayout_3.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.closeButton = QPushButton(self.frame)
        self.closeButton.setObjectName(u"closeButton")
        self.closeButton.setMinimumSize(QSize(15, 15))
        self.closeButton.setMaximumSize(QSize(15, 15))
        self.closeButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.closeButton.setStyleSheet(u"QPushButton \n"
"{\n"
"border-image: url(M:\\PEOPLE\\MartinG\\GitHub\\MG_PasteBoard\\core\\icons\\closeWindow.png); \n"
"}\n"
"QPushButton:hover \n"
"{\n"
" border-image: url(M:\\PEOPLE\\MartinG\\GitHub\\MG_PasteBoard\\core\\icons\\closeWindow_hover.png);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
" border-image: url(M:\\PEOPLE\\MartinG\\GitHub\\MG_PasteBoard\\core\\icons\\closeWindow_hover.png);\n"
"}\n"
"")
        self.closeButton.setIconSize(QSize(9, 9))
        self.closeButton.setAutoExclusive(False)
        self.closeButton.setFlat(True)

        self.verticalLayout_3.addWidget(self.closeButton)

        self.verticalSpacer_9 = QSpacerItem(0, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_3.addItem(self.verticalSpacer_9)


        self.topLayout_2.addLayout(self.verticalLayout_3)

        self.horizontalSpacer_30 = QSpacerItem(5, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.topLayout_2.addItem(self.horizontalSpacer_30)


        self.verticalLayout_5.addLayout(self.topLayout_2)

        self.verticalSpacer_6 = QSpacerItem(20, 20, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout_5.addItem(self.verticalSpacer_6)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setSpacing(0)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalSpacer_2 = QSpacerItem(20, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_2)

        self.verticalLayout_4 = QVBoxLayout()
        self.verticalLayout_4.setSpacing(15)
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.label_11 = QLabel(self.frame)
        self.label_11.setObjectName(u"label_11")
        self.label_11.setMinimumSize(QSize(70, 0))
        font2 = QFont()
        font2.setPointSize(14)
        self.label_11.setFont(font2)
        self.label_11.setStyleSheet(u"")

        self.verticalLayout_4.addWidget(self.label_11)

        self.alwaysOn = QCheckBox(self.frame)
        self.alwaysOn.setObjectName(u"alwaysOn")
        self.alwaysOn.setCursor(QCursor(Qt.PointingHandCursor))
        self.alwaysOn.setStyleSheet(u"")

        self.verticalLayout_4.addWidget(self.alwaysOn)

        self.noColorMode = QCheckBox(self.frame)
        self.noColorMode.setObjectName(u"noColorMode")
        self.noColorMode.setCursor(QCursor(Qt.PointingHandCursor))
        self.noColorMode.setStyleSheet(u"")

        self.verticalLayout_4.addWidget(self.noColorMode)

        self.label_14 = QLabel(self.frame)
        self.label_14.setObjectName(u"label_14")
        self.label_14.setMinimumSize(QSize(70, 0))
        self.label_14.setFont(font2)
        self.label_14.setStyleSheet(u"")

        self.verticalLayout_4.addWidget(self.label_14)

        self.mayaCommands = QCheckBox(self.frame)
        self.mayaCommands.setObjectName(u"mayaCommands")
        self.mayaCommands.setCursor(QCursor(Qt.PointingHandCursor))
        self.mayaCommands.setStyleSheet(u"")
        self.mayaCommands.setChecked(True)

        self.verticalLayout_4.addWidget(self.mayaCommands)

        self.verticalSpacer_2 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_4.addItem(self.verticalSpacer_2)


        self.horizontalLayout.addLayout(self.verticalLayout_4)

        self.horizontalSpacer_4 = QSpacerItem(30, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_4)

        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setSpacing(3)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.label_12 = QLabel(self.frame)
        self.label_12.setObjectName(u"label_12")
        self.label_12.setMinimumSize(QSize(70, 0))
        self.label_12.setFont(font2)
        self.label_12.setStyleSheet(u"")

        self.verticalLayout_2.addWidget(self.label_12)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.label_15 = QLabel(self.frame)
        self.label_15.setObjectName(u"label_15")
        self.label_15.setMinimumSize(QSize(70, 0))
        font3 = QFont()
        font3.setPointSize(10)
        self.label_15.setFont(font3)
        self.label_15.setStyleSheet(u"color: rgb(255,255,255,100);")
        self.label_15.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignTop)

        self.horizontalLayout_4.addWidget(self.label_15)

        self.resetPathButton = QToolButton(self.frame)
        self.resetPathButton.setObjectName(u"resetPathButton")
        self.resetPathButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.resetPathButton.setAutoFillBackground(False)
        self.resetPathButton.setStyleSheet(u"QToolButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding: 2px;\n"
"outline: 0;\n"
"}\n"
"\n"
"QToolButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,20);\n"
"}\n"
"\n"
"QToolButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_4.addWidget(self.resetPathButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_4)

        self.actionPathField = QListWidget(self.frame)
        self.actionPathField.setObjectName(u"actionPathField")
        self.actionPathField.setMinimumSize(QSize(0, 0))
        self.actionPathField.viewport().setProperty("cursor", QCursor(Qt.SplitHCursor))
        self.actionPathField.setStyleSheet(u"QListWidget\n"
"{\n"
"background-color: rgb(0,0,0,50);\n"
"alternate-background-color: rgb(0,0,0,50);\n"
"color:  rgb(250,250,250);\n"
"margin: 1px;\n"
"}\n"
"\n"
"QListWidget::item:selected\n"
"{\n"
"background-color: rgb(52,104, 170,120);\n"
"border-radius: 3px;\n"
"}\n"
"\n"
"\n"
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
"backgro"
                        "und-color:  rgb(250, 250, 250,0);\n"
"}")
        self.actionPathField.setFrameShape(QFrame.NoFrame)
        self.actionPathField.setFrameShadow(QFrame.Plain)
        self.actionPathField.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.actionPathField.setEditTriggers(QAbstractItemView.DoubleClicked)
        self.actionPathField.setAlternatingRowColors(True)
        self.actionPathField.setVerticalScrollMode(QAbstractItemView.ScrollPerItem)
        self.actionPathField.setHorizontalScrollMode(QAbstractItemView.ScrollPerItem)
        self.actionPathField.setMovement(QListView.Static)
        self.actionPathField.setFlow(QListView.TopToBottom)
        self.actionPathField.setProperty("isWrapping", False)
        self.actionPathField.setResizeMode(QListView.Fixed)
        self.actionPathField.setSpacing(2)
        self.actionPathField.setViewMode(QListView.ListMode)
        self.actionPathField.setUniformItemSizes(False)
        self.actionPathField.setWordWrap(False)

        self.verticalLayout_2.addWidget(self.actionPathField)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.removeScriptFolderButton = QPushButton(self.frame)
        self.removeScriptFolderButton.setObjectName(u"removeScriptFolderButton")
        self.removeScriptFolderButton.setMinimumSize(QSize(0, 20))
        self.removeScriptFolderButton.setMaximumSize(QSize(300, 25))
        self.removeScriptFolderButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.removeScriptFolderButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(186, 49, 31,240);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding: 2px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(196, 59, 41,240);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(176, 39, 21,240);\n"
"}")

        self.horizontalLayout_2.addWidget(self.removeScriptFolderButton)

        self.openScriptFolderButton = QPushButton(self.frame)
        self.openScriptFolderButton.setObjectName(u"openScriptFolderButton")
        self.openScriptFolderButton.setMinimumSize(QSize(0, 20))
        self.openScriptFolderButton.setMaximumSize(QSize(300, 25))
        self.openScriptFolderButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.openScriptFolderButton.setStyleSheet(u"QPushButton\n"
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

        self.horizontalLayout_2.addWidget(self.openScriptFolderButton)

        self.addScriptFolderButton = QPushButton(self.frame)
        self.addScriptFolderButton.setObjectName(u"addScriptFolderButton")
        self.addScriptFolderButton.setMinimumSize(QSize(0, 20))
        self.addScriptFolderButton.setMaximumSize(QSize(900, 25))
        self.addScriptFolderButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.addScriptFolderButton.setStyleSheet(u"QPushButton\n"
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

        self.horizontalLayout_2.addWidget(self.addScriptFolderButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_2)

        self.verticalSpacer_3 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Preferred)

        self.verticalLayout_2.addItem(self.verticalSpacer_3)


        self.horizontalLayout.addLayout(self.verticalLayout_2)

        self.horizontalSpacer_5 = QSpacerItem(20, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_5)


        self.verticalLayout_5.addLayout(self.horizontalLayout)

        self.verticalSpacer_5 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout_5.addItem(self.verticalSpacer_5)

        self.horizontalLayout_11 = QHBoxLayout()
        self.horizontalLayout_11.setSpacing(0)
        self.horizontalLayout_11.setObjectName(u"horizontalLayout_11")
        self.horizontalSpacer_8 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_11.addItem(self.horizontalSpacer_8)

        self.resetButton = QToolButton(self.frame)
        self.resetButton.setObjectName(u"resetButton")
        self.resetButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.resetButton.setAutoFillBackground(False)
        self.resetButton.setStyleSheet(u"QToolButton#resetButton\n"
"{\n"
"\n"
"background-color: rgb(186, 49, 31,240);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding: 2px;\n"
"}\n"
"\n"
"QToolButton#resetButton:hover\n"
"{\n"
"\n"
"background-color: rgb(196, 59, 41,240);\n"
"}\n"
"\n"
"QToolButton#resetButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(176, 39, 21,240);\n"
"}")

        self.horizontalLayout_11.addWidget(self.resetButton)

        self.horizontalSpacer_10 = QSpacerItem(5, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_11.addItem(self.horizontalSpacer_10)

        self.resetLabel = QLabel(self.frame)
        self.resetLabel.setObjectName(u"resetLabel")
        sizePolicy1 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Fixed)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.resetLabel.sizePolicy().hasHeightForWidth())
        self.resetLabel.setSizePolicy(sizePolicy1)
        self.resetLabel.setStyleSheet(u"color: rgb(123, 141, 164);")

        self.horizontalLayout_11.addWidget(self.resetLabel)

        self.horizontalSpacer_23 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_11.addItem(self.horizontalSpacer_23)


        self.verticalLayout_5.addLayout(self.horizontalLayout_11)

        self.verticalSpacer_4 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout_5.addItem(self.verticalSpacer_4)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setSpacing(0)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.horizontalSpacer_12 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_3.addItem(self.horizontalSpacer_12)

        self.saveButton = QPushButton(self.frame)
        self.saveButton.setObjectName(u"saveButton")
        self.saveButton.setMinimumSize(QSize(0, 25))
        self.saveButton.setStyleSheet(u"QPushButton\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"outline: 0;\n"
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
        self.saveButton.setFlat(False)

        self.horizontalLayout_3.addWidget(self.saveButton)

        self.horizontalSpacer_13 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_3.addItem(self.horizontalSpacer_13)


        self.verticalLayout_5.addLayout(self.horizontalLayout_3)

        self.gridLayout_9 = QGridLayout()
        self.gridLayout_9.setObjectName(u"gridLayout_9")
        self.gridLayout_9.setHorizontalSpacing(0)
        self.horizontalSpacer_11 = QSpacerItem(40, 10, QSizePolicy.MinimumExpanding, QSizePolicy.Minimum)

        self.gridLayout_9.addItem(self.horizontalSpacer_11, 0, 0, 1, 1)

        self.resizeCorner = QPushButton(self.frame)
        self.resizeCorner.setObjectName(u"resizeCorner")
        self.resizeCorner.setMinimumSize(QSize(5, 5))
        self.resizeCorner.setMaximumSize(QSize(5, 5))
        self.resizeCorner.setCursor(QCursor(Qt.SizeFDiagCursor))
        self.resizeCorner.setStyleSheet(u"background-color: rgb(57, 85, 99,0);\n"
"border-style: none;")

        self.gridLayout_9.addWidget(self.resizeCorner, 0, 1, 1, 1)


        self.verticalLayout_5.addLayout(self.gridLayout_9)


        self.gridLayout.addWidget(self.frame, 0, 0, 1, 1)


        self.gridLayout_4.addWidget(self.widget, 0, 0, 1, 1)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.smallLogo.setText("")
        self.title.setText(QCoreApplication.translate("Form", u"Cosmos Settings", None))
        self.versionText.setText(QCoreApplication.translate("Form", u"Version", None))
        self.closeButton.setText("")
        self.label_11.setText(QCoreApplication.translate("Form", u"Look:", None))
#if QT_CONFIG(statustip)
        self.alwaysOn.setStatusTip(QCoreApplication.translate("Form", u"Dont close the window after executing an action", None))
#endif // QT_CONFIG(statustip)
        self.alwaysOn.setText(QCoreApplication.translate("Form", u"Keep Window open", None))
#if QT_CONFIG(statustip)
        self.noColorMode.setStatusTip(QCoreApplication.translate("Form", u"Dont close the window after executing an action", None))
#endif // QT_CONFIG(statustip)
        self.noColorMode.setText(QCoreApplication.translate("Form", u"Gray color scheme", None))
        self.label_14.setText(QCoreApplication.translate("Form", u"Search:", None))
#if QT_CONFIG(statustip)
        self.mayaCommands.setStatusTip(QCoreApplication.translate("Form", u"Add Maya commands in the search", None))
#endif // QT_CONFIG(statustip)
        self.mayaCommands.setText(QCoreApplication.translate("Form", u"Include Maya Menus", None))
        self.label_12.setText(QCoreApplication.translate("Form", u"Action folders:", None))
        self.label_15.setText(QCoreApplication.translate("Form", u"All listed paths will be scanned for Actions", None))
#if QT_CONFIG(statustip)
        self.resetPathButton.setStatusTip(QCoreApplication.translate("Form", u"Reset the default paths that comes with Cosmos", None))
#endif // QT_CONFIG(statustip)
        self.resetPathButton.setText(QCoreApplication.translate("Form", u"Reset Default", None))
#if QT_CONFIG(statustip)
        self.removeScriptFolderButton.setStatusTip(QCoreApplication.translate("Form", u"Test the script", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.removeScriptFolderButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.removeScriptFolderButton.setText(QCoreApplication.translate("Form", u"Remove", None))
#if QT_CONFIG(statustip)
        self.openScriptFolderButton.setStatusTip(QCoreApplication.translate("Form", u"Test the script", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.openScriptFolderButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.openScriptFolderButton.setText(QCoreApplication.translate("Form", u"Open", None))
#if QT_CONFIG(statustip)
        self.addScriptFolderButton.setStatusTip(QCoreApplication.translate("Form", u"Test the script", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.addScriptFolderButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.addScriptFolderButton.setText(QCoreApplication.translate("Form", u"Add", None))
#if QT_CONFIG(statustip)
        self.resetButton.setStatusTip(QCoreApplication.translate("Form", u"Resets all the history for things you seached for", None))
#endif // QT_CONFIG(statustip)
        self.resetButton.setText(QCoreApplication.translate("Form", u"Reset", None))
        self.resetLabel.setText(QCoreApplication.translate("Form", u"Reset all the search history", None))
#if QT_CONFIG(statustip)
        self.saveButton.setStatusTip(QCoreApplication.translate("Form", u"Save the settings", None))
#endif // QT_CONFIG(statustip)
        self.saveButton.setText(QCoreApplication.translate("Form", u"Save settings", None))
        self.resizeCorner.setText("")
    # retranslateUi

