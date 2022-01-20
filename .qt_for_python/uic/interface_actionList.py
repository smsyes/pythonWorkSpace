# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface_actionList.ui'
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
        Form.resize(515, 787)
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.frame = QWidget(Form)
        self.frame.setObjectName(u"frame")
        self.frame.setStyleSheet(u"QWidget\n"
"{\n"
"border-radius: 10px;\n"
"background-color: rgb(27, 55, 69);\n"
"}")
        self.verticalLayout_2 = QVBoxLayout(self.frame)
        self.verticalLayout_2.setSpacing(0)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.verticalLayout_2.setContentsMargins(0, 10, 0, 0)
        self.topWidget = QWidget(self.frame)
        self.topWidget.setObjectName(u"topWidget")
        self.topWidget.setStyleSheet(u"background-color: rgb(0,0,0,0)")
        self.horizontalLayout_3 = QHBoxLayout(self.topWidget)
        self.horizontalLayout_3.setSpacing(0)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.horizontalLayout_3.setContentsMargins(0, 0, 0, 0)
        self.topSection = QHBoxLayout()
        self.topSection.setSpacing(0)
        self.topSection.setObjectName(u"topSection")
        self.horizontalSpacer_9 = QSpacerItem(30, 13, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.topSection.addItem(self.horizontalSpacer_9)

        self.horizontalSpacer_10 = QSpacerItem(50, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.topSection.addItem(self.horizontalSpacer_10)

        self.header = QLabel(self.topWidget)
        self.header.setObjectName(u"header")
        sizePolicy = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.header.sizePolicy().hasHeightForWidth())
        self.header.setSizePolicy(sizePolicy)
        self.header.setMinimumSize(QSize(0, 30))
        self.header.setMaximumSize(QSize(16777215, 30))
        self.header.setBaseSize(QSize(0, 30))
        font = QFont()
        font.setPointSize(17)
        self.header.setFont(font)
        self.header.setStyleSheet(u"color: rgb(230, 230, 230);\n"
"background-color: rgb(0, 0,0,0);")
        self.header.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignTop)

        self.topSection.addWidget(self.header)

        self.horizontalSpacer_11 = QSpacerItem(30, 13, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.topSection.addItem(self.horizontalSpacer_11)

        self.verticalLayout_7 = QVBoxLayout()
        self.verticalLayout_7.setSpacing(0)
        self.verticalLayout_7.setObjectName(u"verticalLayout_7")
        self.verticalLayout_7.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.verticalLayout_7.setContentsMargins(0, -1, -1, -1)
        self.dockButton = QPushButton(self.topWidget)
        self.dockButton.setObjectName(u"dockButton")
        self.dockButton.setMinimumSize(QSize(15, 15))
        self.dockButton.setMaximumSize(QSize(15, 15))
        self.dockButton.setCursor(QCursor(Qt.PointingHandCursor))
        self.dockButton.setStyleSheet(u"QPushButton \n"
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
        self.dockButton.setIconSize(QSize(9, 9))
        self.dockButton.setAutoExclusive(False)
        self.dockButton.setFlat(True)

        self.verticalLayout_7.addWidget(self.dockButton)

        self.verticalSpacer_7 = QSpacerItem(0, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_7.addItem(self.verticalSpacer_7)


        self.topSection.addLayout(self.verticalLayout_7)

        self.verticalLayout_8 = QVBoxLayout()
        self.verticalLayout_8.setSpacing(0)
        self.verticalLayout_8.setObjectName(u"verticalLayout_8")
        self.verticalLayout_8.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.verticalLayout_8.setContentsMargins(0, -1, -1, -1)
        self.closeButton = QPushButton(self.topWidget)
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

        self.verticalLayout_8.addWidget(self.closeButton)

        self.verticalSpacer_8 = QSpacerItem(0, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_8.addItem(self.verticalSpacer_8)


        self.topSection.addLayout(self.verticalLayout_8)

        self.horizontalSpacer_12 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.topSection.addItem(self.horizontalSpacer_12)


        self.horizontalLayout_3.addLayout(self.topSection)


        self.verticalLayout_2.addWidget(self.topWidget)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setSpacing(0)
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.filterHeader = QPushButton(self.frame)
        self.filterHeader.setObjectName(u"filterHeader")
        self.filterHeader.setMinimumSize(QSize(0, 30))
        self.filterHeader.setMaximumSize(QSize(16777215, 30))
        font1 = QFont()
        font1.setPointSize(14)
        self.filterHeader.setFont(font1)
        self.filterHeader.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(255, 255, 255,0);\n"
"color: rgb(255, 255, 255,200);\n"
"text-align: left;\n"
"padding-left: 10px;\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"color: rgb(255, 255, 255,250);\n"
"}")
        icon = QIcon()
        icon.addFile(u"../../../../../../.designer/icons/folderClosed.png", QSize(), QIcon.Normal, QIcon.Off)
        self.filterHeader.setIcon(icon)

        self.horizontalLayout_5.addWidget(self.filterHeader)

        self.horizontalSpacer_15 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_15)

        self.loadingGif = QLabel(self.frame)
        self.loadingGif.setObjectName(u"loadingGif")
        self.loadingGif.setMinimumSize(QSize(15, 15))
        self.loadingGif.setMaximumSize(QSize(20, 20))

        self.horizontalLayout_5.addWidget(self.loadingGif)

        self.horizontalSpacer = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer)

        self.label_2 = QLabel(self.frame)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setMinimumSize(QSize(0, 30))
        self.label_2.setMaximumSize(QSize(1630, 30))
        self.label_2.setStyleSheet(u"QLabel\n"
"{\n"
"background-color: rgb(250,250,250,30);\n"
"color: rgb(250, 250, 250);\n"
"border-top-left-radius: 5px;\n"
"border-top-right-radius: 0px;\n"
"border-bottom-left-radius: 5px;\n"
"border-bottom-right-radius: 0px;\n"
"padding-left: 5px;\n"
"padding-right: 5px;\n"
"}")

        self.horizontalLayout_5.addWidget(self.label_2)

        self.sortingField = QComboBox(self.frame)
        self.sortingField.addItem("")
        self.sortingField.addItem("")
        self.sortingField.addItem("")
        self.sortingField.addItem("")
        self.sortingField.addItem("")
        self.sortingField.setObjectName(u"sortingField")
        sizePolicy1 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Preferred)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.sortingField.sizePolicy().hasHeightForWidth())
        self.sortingField.setSizePolicy(sizePolicy1)
        self.sortingField.setMinimumSize(QSize(90, 30))
        self.sortingField.setMaximumSize(QSize(1630, 30))
        self.sortingField.setStyleSheet(u"QComboBox\n"
"{\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"border-top-left-radius: 0px;\n"
"border-top-right-radius: 5px;\n"
"border-bottom-left-radius: 0px;\n"
"border-bottom-right-radius: 5px;\n"
"padding-left: 10px;\n"
"padding-right: 10px;\n"
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
"	border-t"
                        "op: 6px solid  rgb(200,200, 200);\n"
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
"}\n"
"\n"
"\n"
"/* The scrollbar itself*/\n"
"QScrollBar::handle:v"
                        "ertical \n"
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

        self.horizontalLayout_5.addWidget(self.sortingField)

        self.horizontalSpacer_16 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_16)


        self.verticalLayout_2.addLayout(self.horizontalLayout_5)

        self.verticalSpacer_3 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Maximum)

        self.verticalLayout_2.addItem(self.verticalSpacer_3)

        self.scrollArea = QScrollArea(self.frame)
        self.scrollArea.setObjectName(u"scrollArea")
        self.scrollArea.setMinimumSize(QSize(300, 0))
        self.scrollArea.setStyleSheet(u"/* Scrollbar  */\n"
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
        self.scrollArea.setFrameShape(QFrame.NoFrame)
        self.scrollArea.setFrameShadow(QFrame.Plain)
        self.scrollArea.setSizeAdjustPolicy(QAbstractScrollArea.AdjustToContents)
        self.scrollArea.setWidgetResizable(True)
        self.scrollAreaWidgetContents = QWidget()
        self.scrollAreaWidgetContents.setObjectName(u"scrollAreaWidgetContents")
        self.scrollAreaWidgetContents.setGeometry(QRect(0, 0, 515, 643))
        self.verticalLayout_3 = QVBoxLayout(self.scrollAreaWidgetContents)
        self.verticalLayout_3.setSpacing(0)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.verticalLayout_3.setContentsMargins(0, 0, 0, 0)
        self.filterFrame = QFrame(self.scrollAreaWidgetContents)
        self.filterFrame.setObjectName(u"filterFrame")
        sizePolicy2 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Fixed)
        sizePolicy2.setHorizontalStretch(0)
        sizePolicy2.setVerticalStretch(0)
        sizePolicy2.setHeightForWidth(self.filterFrame.sizePolicy().hasHeightForWidth())
        self.filterFrame.setSizePolicy(sizePolicy2)
        self.filterFrame.setMinimumSize(QSize(300, 100))
        self.filterFrame.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 rgb(0, 0, 0, 80), stop: 0.05 rgb(0, 0, 0,50));\n"
"border-radius: 0px;\n"
"}\n"
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
        self.filterFrame.setFrameShape(QFrame.NoFrame)
        self.filterFrame.setFrameShadow(QFrame.Raised)
        self.filterFrameLayout = QVBoxLayout(self.filterFrame)
        self.filterFrameLayout.setSpacing(0)
        self.filterFrameLayout.setObjectName(u"filterFrameLayout")
        self.filterFrameLayout.setContentsMargins(10, 0, 0, 0)
        self.listHeader = QPushButton(self.filterFrame)
        self.listHeader.setObjectName(u"listHeader")
        self.listHeader.setMinimumSize(QSize(0, 40))
        self.listHeader.setMaximumSize(QSize(16777215, 40))
        font2 = QFont()
        font2.setPointSize(13)
        self.listHeader.setFont(font2)
        self.listHeader.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(0, 255, 100, 0);\n"
"color: rgb(255, 255, 255);\n"
"text-align: left;\n"
"border-radius: 2px;\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"color: rgb(255, 255, 255,220);\n"
"}")
        self.listHeader.setIcon(icon)
        self.listHeader.setIconSize(QSize(20, 20))

        self.filterFrameLayout.addWidget(self.listHeader)

        self.listFrame = QFrame(self.filterFrame)
        self.listFrame.setObjectName(u"listFrame")
        sizePolicy3 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        sizePolicy3.setHorizontalStretch(0)
        sizePolicy3.setVerticalStretch(0)
        sizePolicy3.setHeightForWidth(self.listFrame.sizePolicy().hasHeightForWidth())
        self.listFrame.setSizePolicy(sizePolicy3)
        self.listFrame.setMinimumSize(QSize(0, 40))
        self.listFrame.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: rgb(250,0,0,0);\n"
" \n"
"}\n"
"\n"
"QLabel\n"
"{\n"
"color: rgb(153, 171, 194);\n"
"}\n"
"\n"
"QCheckBox\n"
"{\n"
"color: rgb(250, 250, 250, 150);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox:checked\n"
"{\n"
"color: rgb(250, 250, 250, 250);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox::indicator {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 3px;\n"
"border-style: solid;\n"
"border-width: 1px;\n"
"border-color: rgb(250,250,250)\n"
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
"	background-color: rgb(240, 240, 240,"
                        "230);\n"
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
"color: rgb(250, 250, 250);\n"
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
        self.listFrame.setFrameShape(QFrame.NoFrame)
        self.listFrame.setFrameShadow(QFrame.Plain)

        self.filterFrameLayout.addWidget(self.listFrame)

        self.tagsHeader = QPushButton(self.filterFrame)
        self.tagsHeader.setObjectName(u"tagsHeader")
        self.tagsHeader.setMinimumSize(QSize(0, 40))
        self.tagsHeader.setMaximumSize(QSize(16777215, 40))
        self.tagsHeader.setFont(font2)
        self.tagsHeader.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(0, 255, 100, 0);\n"
"color: rgb(255, 255, 255);\n"
"text-align: left;\n"
"border-radius: 2px;\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"color: rgb(255, 255, 255,220);\n"
"}")
        self.tagsHeader.setIcon(icon)
        self.tagsHeader.setIconSize(QSize(20, 20))

        self.filterFrameLayout.addWidget(self.tagsHeader)

        self.tagsFrame = QFrame(self.filterFrame)
        self.tagsFrame.setObjectName(u"tagsFrame")
        self.tagsFrame.setMinimumSize(QSize(0, 40))
        self.tagsFrame.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: rgb(250,0,0,0);\n"
" \n"
"}\n"
"\n"
"QLabel\n"
"{\n"
"color: rgb(153, 171, 194);\n"
"}\n"
"\n"
"QCheckBox\n"
"{\n"
"color: rgb(250, 250, 250, 150);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox:checked\n"
"{\n"
"color: rgb(250, 250, 250, 250);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox::indicator {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 3px;\n"
"border-style: solid;\n"
"border-width: 1px;\n"
"border-color: rgb(250,250,250)\n"
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
"	background-color: rgb(240, 240, 240,"
                        "230);\n"
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
"color: rgb(250, 250, 250);\n"
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

        self.filterFrameLayout.addWidget(self.tagsFrame)

        self.categoriesHeader = QPushButton(self.filterFrame)
        self.categoriesHeader.setObjectName(u"categoriesHeader")
        self.categoriesHeader.setMinimumSize(QSize(0, 40))
        self.categoriesHeader.setMaximumSize(QSize(16777215, 40))
        self.categoriesHeader.setFont(font2)
        self.categoriesHeader.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(0, 255, 100, 0);\n"
"color: rgb(255, 255, 255);\n"
"text-align: left;\n"
"border-radius: 2px;\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"color: rgb(255, 255, 255,220);\n"
"}")
        self.categoriesHeader.setIcon(icon)
        self.categoriesHeader.setIconSize(QSize(20, 20))

        self.filterFrameLayout.addWidget(self.categoriesHeader)

        self.categoriesFrame = QFrame(self.filterFrame)
        self.categoriesFrame.setObjectName(u"categoriesFrame")
        sizePolicy3.setHeightForWidth(self.categoriesFrame.sizePolicy().hasHeightForWidth())
        self.categoriesFrame.setSizePolicy(sizePolicy3)
        self.categoriesFrame.setMinimumSize(QSize(0, 40))
        self.categoriesFrame.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: rgb(250,0,0,0);\n"
" \n"
"}\n"
"\n"
"QLabel\n"
"{\n"
"color: rgb(153, 171, 194);\n"
"}\n"
"\n"
"QCheckBox\n"
"{\n"
"color: rgb(250, 250, 250, 150);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox:checked\n"
"{\n"
"color: rgb(250, 250, 250, 250);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox::indicator {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 3px;\n"
"border-style: solid;\n"
"border-width: 1px;\n"
"border-color: rgb(250,250,250)\n"
"}\n"
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
"	background-color: rgb(240, 240, 240,230);"
                        "\n"
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
"color: rgb(250, 250, 250);\n"
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
        self.categoriesFrame.setFrameShape(QFrame.NoFrame)
        self.categoriesFrame.setFrameShadow(QFrame.Plain)

        self.filterFrameLayout.addWidget(self.categoriesFrame)

        self.favoritesHeader = QPushButton(self.filterFrame)
        self.favoritesHeader.setObjectName(u"favoritesHeader")
        self.favoritesHeader.setMinimumSize(QSize(0, 40))
        self.favoritesHeader.setMaximumSize(QSize(16777215, 40))
        self.favoritesHeader.setFont(font2)
        self.favoritesHeader.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(0, 255, 100, 0);\n"
"color: rgb(255, 255, 255);\n"
"text-align: left;\n"
"border-radius: 2px;\n"
"}\n"
"\n"
"QPushButton::hover\n"
"{\n"
"color: rgb(255, 255, 255,220);\n"
"}")
        self.favoritesHeader.setIcon(icon)
        self.favoritesHeader.setIconSize(QSize(20, 20))

        self.filterFrameLayout.addWidget(self.favoritesHeader)

        self.favoritesFrame = QFrame(self.filterFrame)
        self.favoritesFrame.setObjectName(u"favoritesFrame")
        self.favoritesFrame.setMinimumSize(QSize(0, 40))
        self.favoritesFrame.setStyleSheet(u"QFrame\n"
"{\n"
"background-color: rgb(250,0,0,0);\n"
" \n"
"}\n"
"\n"
"QLabel\n"
"{\n"
"color: rgb(250, 250, 250, 180);\n"
"}\n"
"\n"
"QCheckBox\n"
"{\n"
"color: rgb(250, 250, 250, 150);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox:checked\n"
"{\n"
"color: rgb(250, 250, 250, 250);\n"
"background-color: rgb(0, 0, 0,0);\n"
"}\n"
"QCheckBox::indicator {\n"
"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 3px;\n"
"border-style: solid;\n"
"border-width: 1px;\n"
"border-color: rgb(250,250,250)\n"
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
"	background-color: rgb(240, 240,"
                        " 240,230);\n"
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
"color: rgb(250, 250, 250);\n"
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
        self.favoritesFrame.setFrameShape(QFrame.NoFrame)
        self.favoritesFrame.setFrameShadow(QFrame.Plain)
        self.favoritesFrame.setLineWidth(0)
        self.verticalLayout_10 = QVBoxLayout(self.favoritesFrame)
        self.verticalLayout_10.setSpacing(10)
        self.verticalLayout_10.setObjectName(u"verticalLayout_10")
        self.verticalLayout_10.setContentsMargins(0, 0, 0, 0)
        self.checkbox_favorite = QCheckBox(self.favoritesFrame)
        self.checkbox_favorite.setObjectName(u"checkbox_favorite")
        self.checkbox_favorite.setMinimumSize(QSize(0, 25))
        self.checkbox_favorite.setStyleSheet(u"")

        self.verticalLayout_10.addWidget(self.checkbox_favorite)

        self.checkbox_blacklisted = QCheckBox(self.favoritesFrame)
        self.checkbox_blacklisted.setObjectName(u"checkbox_blacklisted")
        self.checkbox_blacklisted.setMinimumSize(QSize(0, 25))
        self.checkbox_blacklisted.setStyleSheet(u"")

        self.verticalLayout_10.addWidget(self.checkbox_blacklisted)

        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName(u"horizontalLayout_6")
        self.label = QLabel(self.favoritesFrame)
        self.label.setObjectName(u"label")
        self.label.setMinimumSize(QSize(25, 25))
        self.label.setMaximumSize(QSize(16777215, 25))

        self.horizontalLayout_6.addWidget(self.label)

        self.checkbox_hasIcon = QRadioButton(self.favoritesFrame)
        self.checkbox_hasIcon.setObjectName(u"checkbox_hasIcon")
        self.checkbox_hasIcon.setMinimumSize(QSize(0, 25))
        self.checkbox_hasIcon.setMaximumSize(QSize(16777215, 25))

        self.horizontalLayout_6.addWidget(self.checkbox_hasIcon)

        self.checkbox_noIcon = QRadioButton(self.favoritesFrame)
        self.checkbox_noIcon.setObjectName(u"checkbox_noIcon")
        self.checkbox_noIcon.setMinimumSize(QSize(0, 25))
        self.checkbox_noIcon.setMaximumSize(QSize(16777215, 25))

        self.horizontalLayout_6.addWidget(self.checkbox_noIcon)

        self.horizontalSpacer_8 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_6.addItem(self.horizontalSpacer_8)


        self.verticalLayout_10.addLayout(self.horizontalLayout_6)


        self.filterFrameLayout.addWidget(self.favoritesFrame)

        self.clearButton = QPushButton(self.filterFrame)
        self.clearButton.setObjectName(u"clearButton")
        sizePolicy3.setHeightForWidth(self.clearButton.sizePolicy().hasHeightForWidth())
        self.clearButton.setSizePolicy(sizePolicy3)
        self.clearButton.setMinimumSize(QSize(80, 30))
        self.clearButton.setMaximumSize(QSize(16999, 30))
        self.clearButton.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(250, 250, 250, 0);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 0px;\n"
"border-style: solid;\n"
"border-color: rgb(250,250,250,100);\n"
"border-width: 2px;\n"
"margin-right: 10px;\n"
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

        self.filterFrameLayout.addWidget(self.clearButton)


        self.verticalLayout_3.addWidget(self.filterFrame)

        self.actionList = QListWidget(self.scrollAreaWidgetContents)
        self.actionList.setObjectName(u"actionList")
        self.actionList.setStyleSheet(u"QListWidget::item\n"
"{\n"
"padding: 0px;\n"
"outline: 0;\n"
"border: solid;\n"
"border-width: 0;\n"
"}\n"
"\n"
"QListWidget::item:hover\n"
"{\n"
"background-color: rgb(0,0,0,0);\n"
"}\n"
"\n"
"QListWidget::item:selected\n"
"{\n"
"padding: 0px;\n"
"background-color: rgb(0,0,0,0);\n"
"border-radius: 0px;\n"
"outline: 0;\n"
"\n"
"\n"
"}\n"
"\n"
"QListWidget::selected:item\n"
"{\n"
"padding: 0px;\n"
"background-color: rgb(0,0,0,0);\n"
"border-radius: 0px;\n"
"outline: 0;\n"
"}\n"
"\n"
"\n"
"\n"
"QListWidget::item:focus\n"
"{\n"
"padding: 0px;\n"
"background-color: rgb(0,0,0,0);\n"
"border-radius: 0px;\n"
"outline: 0;\n"
"}")
        self.actionList.setFrameShape(QFrame.NoFrame)
        self.actionList.setFrameShadow(QFrame.Plain)
        self.actionList.setSizeAdjustPolicy(QAbstractScrollArea.AdjustToContents)

        self.verticalLayout_3.addWidget(self.actionList)

        self.scrollArea.setWidget(self.scrollAreaWidgetContents)

        self.verticalLayout_2.addWidget(self.scrollArea)

        self.verticalSpacer = QSpacerItem(20, 5, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout_2.addItem(self.verticalSpacer)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.horizontalLayout_2.setContentsMargins(-1, 5, -1, -1)
        self.horizontalSpacer_18 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer_18)

        self.statusField = QLabel(self.frame)
        self.statusField.setObjectName(u"statusField")
        self.statusField.setStyleSheet(u"color: rgb(250,250,250,100);\n"
"background-color: rgb(0,0,0,0);")

        self.horizontalLayout_2.addWidget(self.statusField)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer_2)

        self.horizontalSpacer_7 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer_7)

        self.addActionButton = QPushButton(self.frame)
        self.addActionButton.setObjectName(u"addActionButton")
        sizePolicy4 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
        sizePolicy4.setHorizontalStretch(0)
        sizePolicy4.setVerticalStretch(0)
        sizePolicy4.setHeightForWidth(self.addActionButton.sizePolicy().hasHeightForWidth())
        self.addActionButton.setSizePolicy(sizePolicy4)
        self.addActionButton.setMinimumSize(QSize(95, 30))
        self.addActionButton.setMaximumSize(QSize(0, 30))
        self.addActionButton.setStyleSheet(u"QPushButton\n"
"{\n"
"background-color: rgb(250,250,250,20);\n"
"color: rgb(250, 250, 250);\n"
"border-radius: 5px;\n"
"padding-left: 15px;\n"
"padding-right: 15px;\n"
"}\n"
"\n"
"QPushButton:hover\n"
"{\n"
"\n"
"background-color: rgb(250,250,250,30);\n"
"}\n"
"\n"
"QPushButton:pressed\n"
"{\n"
"\n"
"background-color: rgb(0,0,0,30);\n"
"}")

        self.horizontalLayout_2.addWidget(self.addActionButton)

        self.horizontalSpacer_4 = QSpacerItem(10, 20, QSizePolicy.Fixed, QSizePolicy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer_4)


        self.verticalLayout_2.addLayout(self.horizontalLayout_2)

        self.bottomLayout = QGridLayout()
        self.bottomLayout.setObjectName(u"bottomLayout")
        self.bottomLayout.setHorizontalSpacing(0)
        self.horizontalSpacer_14 = QSpacerItem(40, 5, QSizePolicy.MinimumExpanding, QSizePolicy.Minimum)

        self.bottomLayout.addItem(self.horizontalSpacer_14, 0, 0, 1, 1)

        self.resizeCorner = QPushButton(self.frame)
        self.resizeCorner.setObjectName(u"resizeCorner")
        self.resizeCorner.setMinimumSize(QSize(10, 10))
        self.resizeCorner.setMaximumSize(QSize(10, 10))
        self.resizeCorner.setCursor(QCursor(Qt.SizeFDiagCursor))
        self.resizeCorner.setStyleSheet(u"background-color: rgb(57, 85, 99,0);\n"
"border-style: none;")

        self.bottomLayout.addWidget(self.resizeCorner, 0, 1, 1, 1)


        self.verticalLayout_2.addLayout(self.bottomLayout)


        self.gridLayout.addWidget(self.frame, 0, 0, 1, 1)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.header.setText(QCoreApplication.translate("Form", u"Actions", None))
#if QT_CONFIG(tooltip)
        self.dockButton.setToolTip(QCoreApplication.translate("Form", u"Dock to Mayas interface", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.dockButton.setStatusTip("")
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.dockButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.dockButton.setText("")
#if QT_CONFIG(tooltip)
        self.closeButton.setToolTip(QCoreApplication.translate("Form", u"Close window", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.closeButton.setStatusTip("")
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.closeButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.closeButton.setText("")
        self.filterHeader.setText(QCoreApplication.translate("Form", u"Filters", None))
        self.loadingGif.setText("")
        self.label_2.setText(QCoreApplication.translate("Form", u"Sorting:", None))
        self.sortingField.setItemText(0, QCoreApplication.translate("Form", u"Alphabetical", None))
        self.sortingField.setItemText(1, QCoreApplication.translate("Form", u"Category", None))
        self.sortingField.setItemText(2, QCoreApplication.translate("Form", u"Path", None))
        self.sortingField.setItemText(3, QCoreApplication.translate("Form", u"Tags", None))
        self.sortingField.setItemText(4, QCoreApplication.translate("Form", u"Relevance", None))

#if QT_CONFIG(statustip)
        self.sortingField.setStatusTip(QCoreApplication.translate("Form", u"Choose a Action-path", None))
#endif // QT_CONFIG(statustip)
        self.listHeader.setText(QCoreApplication.translate("Form", u"List:", None))
        self.tagsHeader.setText(QCoreApplication.translate("Form", u"Tags:", None))
        self.categoriesHeader.setText(QCoreApplication.translate("Form", u"Categories:", None))
        self.favoritesHeader.setText(QCoreApplication.translate("Form", u"Other:", None))
        self.checkbox_favorite.setText(QCoreApplication.translate("Form", u" Favorite", None))
        self.checkbox_blacklisted.setText(QCoreApplication.translate("Form", u" Blacklisted", None))
        self.label.setText(QCoreApplication.translate("Form", u"Icon:", None))
        self.checkbox_hasIcon.setText(QCoreApplication.translate("Form", u"Yes", None))
        self.checkbox_noIcon.setText(QCoreApplication.translate("Form", u"No", None))
#if QT_CONFIG(tooltip)
        self.clearButton.setToolTip(QCoreApplication.translate("Form", u"Add New Action", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.clearButton.setStatusTip("")
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.clearButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.clearButton.setText(QCoreApplication.translate("Form", u"Clear active filters", None))
        self.statusField.setText(QCoreApplication.translate("Form", u"No results to show", None))
#if QT_CONFIG(tooltip)
        self.addActionButton.setToolTip(QCoreApplication.translate("Form", u"Add New Action", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.addActionButton.setStatusTip("")
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.addActionButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.addActionButton.setText(QCoreApplication.translate("Form", u"Add Action", None))
        self.resizeCorner.setText("")
    # retranslateUi

