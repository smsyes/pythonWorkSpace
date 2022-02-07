# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface_tutorial.ui'
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
        Form.resize(686, 323)
        Form.setStyleSheet(u"")
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.gridLayout.setVerticalSpacing(0)
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.tutorialFrame = QFrame(Form)
        self.tutorialFrame.setObjectName(u"tutorialFrame")
        self.tutorialFrame.setStyleSheet(u"")
        self.tutorialFrame.setFrameShape(QFrame.NoFrame)
        self.tutorialFrame.setFrameShadow(QFrame.Plain)
        self.gridLayout_3 = QGridLayout(self.tutorialFrame)
        self.gridLayout_3.setSpacing(0)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.gridLayout_3.setContentsMargins(0, 0, 0, 10)
        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setSpacing(0)
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.horizontalLayout_2.setContentsMargins(-1, -1, -1, 0)
        self.frame = QFrame(self.tutorialFrame)
        self.frame.setObjectName(u"frame")
        self.frame.setStyleSheet(u"")
        self.frame.setFrameShape(QFrame.NoFrame)
        self.frame.setFrameShadow(QFrame.Plain)
        self.gridLayout_2 = QGridLayout(self.frame)
        self.gridLayout_2.setSpacing(0)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.gridLayout_2.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setSpacing(0)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.verticalSpacer_5 = QSpacerItem(20, 0, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.verticalSpacer_5)

        self.scrollArea = QScrollArea(self.frame)
        self.scrollArea.setObjectName(u"scrollArea")
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.scrollArea.sizePolicy().hasHeightForWidth())
        self.scrollArea.setSizePolicy(sizePolicy)
        self.scrollArea.setStyleSheet(u"QListWidget\n"
"{\n"
"background-color: rgb(0, 0, 0,0);\n"
"border-radius: 0px;\n"
"}\n"
"/* Main\n"
"/* Scrollbar Vertical */\n"
"QScrollBar:vertical\n"
"{\n"
"background-color:rgb(250, 250, 250,0);\n"
"width: 10px;\n"
"}\n"
"\n"
"QScrollBar::handle:vertical:hover\n"
"{\n"
"background-color:  rgb(250, 250, 250,70);\n"
"}\n"
"\n"
"/* Scrollbar background for top and bottom*/\n"
"QScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n"
"{\n"
"background-color:  rgb(250, 250, 250,0);\n"
"width: 10px;\n"
"\n"
"}\n"
"\n"
"QScrollBar::add-line:vertical {\n"
"width: 0px;\n"
"height: 0px;\n"
"}\n"
"\n"
"QScrollBar::sub-line:vertical {\n"
"width: 0px;\n"
"height: 0px;\n"
"}\n"
"\n"
"\n"
"/* The scrollbar itself*/\n"
"QScrollBar::handle:vertical {\n"
"\n"
"background-color: rgb(250, 250, 250,50);\n"
"border-radius: 5px;\n"
"width: 10px;\n"
"}\n"
"\n"
"")
        self.scrollArea.setFrameShape(QFrame.NoFrame)
        self.scrollArea.setFrameShadow(QFrame.Plain)
        self.scrollArea.setLineWidth(0)
        self.scrollArea.setVerticalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.scrollArea.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.scrollArea.setWidgetResizable(True)
        self.webScroll = QWidget()
        self.webScroll.setObjectName(u"webScroll")
        self.webScroll.setGeometry(QRect(0, 0, 682, 234))
        self.webScroll.setStyleSheet(u"border-radius: 0px;")
        self.gridLayout_4 = QGridLayout(self.webScroll)
        self.gridLayout_4.setSpacing(0)
        self.gridLayout_4.setObjectName(u"gridLayout_4")
        self.gridLayout_4.setContentsMargins(0, 0, 0, 0)
        self.tutorialHolder = QStackedWidget(self.webScroll)
        self.tutorialHolder.setObjectName(u"tutorialHolder")
        self.helloPage = QWidget()
        self.helloPage.setObjectName(u"helloPage")
        self.gridLayout_10 = QGridLayout(self.helloPage)
        self.gridLayout_10.setObjectName(u"gridLayout_10")
        self.horizontalSpacer_18 = QSpacerItem(168, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_10.addItem(self.horizontalSpacer_18, 1, 0, 1, 1)

        self.verticalSpacer_11 = QSpacerItem(20, 50, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_10.addItem(self.verticalSpacer_11, 0, 1, 1, 1)

        self.horizontalSpacer_19 = QSpacerItem(168, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_10.addItem(self.horizontalSpacer_19, 1, 2, 1, 1)

        self.verticalLayout_9 = QVBoxLayout()
        self.verticalLayout_9.setSpacing(0)
        self.verticalLayout_9.setObjectName(u"verticalLayout_9")
        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName(u"horizontalLayout_6")
        self.horizontalSpacer_16 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_6.addItem(self.horizontalSpacer_16)

        self.cosmosBigIcon = QLabel(self.helloPage)
        self.cosmosBigIcon.setObjectName(u"cosmosBigIcon")
        self.cosmosBigIcon.setMinimumSize(QSize(80, 80))
        self.cosmosBigIcon.setMaximumSize(QSize(80, 80))
        self.cosmosBigIcon.setLineWidth(0)

        self.horizontalLayout_6.addWidget(self.cosmosBigIcon)

        self.introText = QLabel(self.helloPage)
        self.introText.setObjectName(u"introText")
        sizePolicy1 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Minimum)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.introText.sizePolicy().hasHeightForWidth())
        self.introText.setSizePolicy(sizePolicy1)
        self.introText.setMinimumSize(QSize(0, 30))
        self.introText.setMaximumSize(QSize(16777215, 30))
        font = QFont()
        font.setPointSize(20)
        self.introText.setFont(font)
        self.introText.setStyleSheet(u"color: rgb(230, 230, 230,180);")
        self.introText.setAlignment(Qt.AlignCenter)

        self.horizontalLayout_6.addWidget(self.introText)

        self.horizontalSpacer_17 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_6.addItem(self.horizontalSpacer_17)


        self.verticalLayout_9.addLayout(self.horizontalLayout_6)

        self.verticalSpacer_13 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_9.addItem(self.verticalSpacer_13)


        self.gridLayout_10.addLayout(self.verticalLayout_9, 1, 1, 1, 1)

        self.verticalSpacer_12 = QSpacerItem(20, 47, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_10.addItem(self.verticalSpacer_12, 2, 1, 1, 1)

        self.tutorialHolder.addWidget(self.helloPage)
        self.hotkeyPage = QWidget()
        self.hotkeyPage.setObjectName(u"hotkeyPage")
        self.gridLayout_5 = QGridLayout(self.hotkeyPage)
        self.gridLayout_5.setObjectName(u"gridLayout_5")
        self.gridLayout_5.setContentsMargins(0, 0, 0, 0)
        self.horizontalSpacer_6 = QSpacerItem(205, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_5.addItem(self.horizontalSpacer_6, 0, 0, 1, 1)

        self.horizontalSpacer_7 = QSpacerItem(205, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_5.addItem(self.horizontalSpacer_7, 0, 2, 1, 1)

        self.verticalSpacer_2 = QSpacerItem(20, 47, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_5.addItem(self.verticalSpacer_2, 1, 1, 1, 1)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setSpacing(0)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalSpacer_3 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout.addItem(self.verticalSpacer_3)

        self.title_15 = QLabel(self.hotkeyPage)
        self.title_15.setObjectName(u"title_15")
        sizePolicy1.setHeightForWidth(self.title_15.sizePolicy().hasHeightForWidth())
        self.title_15.setSizePolicy(sizePolicy1)
        self.title_15.setMinimumSize(QSize(0, 30))
        self.title_15.setMaximumSize(QSize(16777215, 30))
        font1 = QFont()
        font1.setPointSize(12)
        self.title_15.setFont(font1)
        self.title_15.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_15.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.title_15)

        self.hotkey = QLabel(self.hotkeyPage)
        self.hotkey.setObjectName(u"hotkey")
        sizePolicy1.setHeightForWidth(self.hotkey.sizePolicy().hasHeightForWidth())
        self.hotkey.setSizePolicy(sizePolicy1)
        self.hotkey.setMinimumSize(QSize(0, 30))
        self.hotkey.setMaximumSize(QSize(16777215, 30))
        font2 = QFont()
        font2.setPointSize(15)
        self.hotkey.setFont(font2)
        self.hotkey.setStyleSheet(u"color: rgb(28,162,210);")
        self.hotkey.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.hotkey)

        self.verticalSpacer = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.verticalSpacer)

        self.hotkeyValueText = QLabel(self.hotkeyPage)
        self.hotkeyValueText.setObjectName(u"hotkeyValueText")
        sizePolicy1.setHeightForWidth(self.hotkeyValueText.sizePolicy().hasHeightForWidth())
        self.hotkeyValueText.setSizePolicy(sizePolicy1)
        self.hotkeyValueText.setMinimumSize(QSize(0, 25))
        self.hotkeyValueText.setMaximumSize(QSize(16777215, 20))
        font3 = QFont()
        font3.setPointSize(13)
        self.hotkeyValueText.setFont(font3)
        self.hotkeyValueText.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.hotkeyValueText.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.hotkeyValueText)

        self.verticalSpacer_4 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout.addItem(self.verticalSpacer_4)

        self.horizontalLayout_7 = QHBoxLayout()
        self.horizontalLayout_7.setObjectName(u"horizontalLayout_7")
        self.horizontalSpacer_22 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_7.addItem(self.horizontalSpacer_22)

        self.handIcon = QPushButton(self.hotkeyPage)
        self.handIcon.setObjectName(u"handIcon")
        self.handIcon.setMinimumSize(QSize(40, 40))
        self.handIcon.setMaximumSize(QSize(40, 40))
        self.handIcon.setIconSize(QSize(40, 40))

        self.horizontalLayout_7.addWidget(self.handIcon)

        self.horizontalSpacer_23 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_7.addItem(self.horizontalSpacer_23)


        self.verticalLayout.addLayout(self.horizontalLayout_7)


        self.gridLayout_5.addLayout(self.verticalLayout, 0, 1, 1, 1)

        self.tutorialHolder.addWidget(self.hotkeyPage)
        self.actionsPage = QWidget()
        self.actionsPage.setObjectName(u"actionsPage")
        self.gridLayout_7 = QGridLayout(self.actionsPage)
        self.gridLayout_7.setObjectName(u"gridLayout_7")
        self.gridLayout_7.setContentsMargins(0, 0, 0, 0)
        self.horizontalSpacer_14 = QSpacerItem(210, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_7.addItem(self.horizontalSpacer_14, 0, 0, 1, 1)

        self.verticalLayout_8 = QVBoxLayout()
        self.verticalLayout_8.setSpacing(0)
        self.verticalLayout_8.setObjectName(u"verticalLayout_8")
        self.title_20 = QLabel(self.actionsPage)
        self.title_20.setObjectName(u"title_20")
        sizePolicy1.setHeightForWidth(self.title_20.sizePolicy().hasHeightForWidth())
        self.title_20.setSizePolicy(sizePolicy1)
        self.title_20.setMinimumSize(QSize(0, 45))
        self.title_20.setMaximumSize(QSize(16777215, 30))
        font4 = QFont()
        font4.setPointSize(25)
        self.title_20.setFont(font4)
        self.title_20.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_20.setAlignment(Qt.AlignHCenter|Qt.AlignTop)

        self.verticalLayout_8.addWidget(self.title_20)

        self.verticalSpacer_15 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_8.addItem(self.verticalSpacer_15)

        self.title_27 = QLabel(self.actionsPage)
        self.title_27.setObjectName(u"title_27")
        sizePolicy1.setHeightForWidth(self.title_27.sizePolicy().hasHeightForWidth())
        self.title_27.setSizePolicy(sizePolicy1)
        self.title_27.setMinimumSize(QSize(0, 25))
        self.title_27.setMaximumSize(QSize(16777215, 25))
        self.title_27.setFont(font1)
        self.title_27.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_27.setAlignment(Qt.AlignCenter)

        self.verticalLayout_8.addWidget(self.title_27)

        self.verticalSpacer_16 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_8.addItem(self.verticalSpacer_16)

        self.searchGifHolder = QLabel(self.actionsPage)
        self.searchGifHolder.setObjectName(u"searchGifHolder")
        self.searchGifHolder.setMinimumSize(QSize(0, 118))
        self.searchGifHolder.setAlignment(Qt.AlignCenter)

        self.verticalLayout_8.addWidget(self.searchGifHolder)


        self.gridLayout_7.addLayout(self.verticalLayout_8, 0, 1, 1, 1)

        self.horizontalSpacer_15 = QSpacerItem(209, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_7.addItem(self.horizontalSpacer_15, 0, 2, 1, 1)

        self.verticalSpacer_9 = QSpacerItem(20, 77, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_7.addItem(self.verticalSpacer_9, 1, 1, 1, 1)

        self.tutorialHolder.addWidget(self.actionsPage)
        self.iconsPage = QWidget()
        self.iconsPage.setObjectName(u"iconsPage")
        self.gridLayout_8 = QGridLayout(self.iconsPage)
        self.gridLayout_8.setObjectName(u"gridLayout_8")
        self.gridLayout_8.setContentsMargins(0, 0, 0, 0)
        self.horizontalSpacer_12 = QSpacerItem(113, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_8.addItem(self.horizontalSpacer_12, 0, 0, 1, 1)

        self.verticalSpacer_8 = QSpacerItem(20, 87, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_8.addItem(self.verticalSpacer_8, 1, 1, 1, 1)

        self.horizontalSpacer_13 = QSpacerItem(113, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_8.addItem(self.horizontalSpacer_13, 0, 2, 1, 1)

        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setSpacing(10)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.verticalSpacer_14 = QSpacerItem(20, 50, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_3.addItem(self.verticalSpacer_14)

        self.horizontalLayout_9 = QHBoxLayout()
        self.horizontalLayout_9.setObjectName(u"horizontalLayout_9")
        self.starPicture = QPushButton(self.iconsPage)
        self.starPicture.setObjectName(u"starPicture")
        self.starPicture.setMinimumSize(QSize(40, 40))
        self.starPicture.setMaximumSize(QSize(40, 40))
        self.starPicture.setStyleSheet(u"")
        self.starPicture.setIconSize(QSize(40, 40))

        self.horizontalLayout_9.addWidget(self.starPicture)

        self.title_35 = QLabel(self.iconsPage)
        self.title_35.setObjectName(u"title_35")
        sizePolicy1.setHeightForWidth(self.title_35.sizePolicy().hasHeightForWidth())
        self.title_35.setSizePolicy(sizePolicy1)
        self.title_35.setMinimumSize(QSize(0, 25))
        self.title_35.setMaximumSize(QSize(16777215, 25))
        self.title_35.setFont(font1)
        self.title_35.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_35.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.horizontalLayout_9.addWidget(self.title_35)


        self.verticalLayout_3.addLayout(self.horizontalLayout_9)

        self.horizontalLayout_10 = QHBoxLayout()
        self.horizontalLayout_10.setObjectName(u"horizontalLayout_10")
        self.blacklistPicture = QPushButton(self.iconsPage)
        self.blacklistPicture.setObjectName(u"blacklistPicture")
        self.blacklistPicture.setMinimumSize(QSize(40, 40))
        self.blacklistPicture.setMaximumSize(QSize(40, 40))
        self.blacklistPicture.setStyleSheet(u"")
        self.blacklistPicture.setIconSize(QSize(40, 40))

        self.horizontalLayout_10.addWidget(self.blacklistPicture)

        self.title_36 = QLabel(self.iconsPage)
        self.title_36.setObjectName(u"title_36")
        sizePolicy1.setHeightForWidth(self.title_36.sizePolicy().hasHeightForWidth())
        self.title_36.setSizePolicy(sizePolicy1)
        self.title_36.setMinimumSize(QSize(0, 25))
        self.title_36.setMaximumSize(QSize(16777215, 25))
        self.title_36.setFont(font1)
        self.title_36.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_36.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.horizontalLayout_10.addWidget(self.title_36)


        self.verticalLayout_3.addLayout(self.horizontalLayout_10)

        self.horizontalLayout_11 = QHBoxLayout()
        self.horizontalLayout_11.setObjectName(u"horizontalLayout_11")
        self.optionsPicture = QPushButton(self.iconsPage)
        self.optionsPicture.setObjectName(u"optionsPicture")
        self.optionsPicture.setMinimumSize(QSize(40, 40))
        self.optionsPicture.setMaximumSize(QSize(40, 40))
        self.optionsPicture.setStyleSheet(u"")
        self.optionsPicture.setIconSize(QSize(40, 40))

        self.horizontalLayout_11.addWidget(self.optionsPicture)

        self.title_37 = QLabel(self.iconsPage)
        self.title_37.setObjectName(u"title_37")
        sizePolicy1.setHeightForWidth(self.title_37.sizePolicy().hasHeightForWidth())
        self.title_37.setSizePolicy(sizePolicy1)
        self.title_37.setMinimumSize(QSize(0, 25))
        self.title_37.setMaximumSize(QSize(16777215, 25))
        self.title_37.setFont(font1)
        self.title_37.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_37.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.horizontalLayout_11.addWidget(self.title_37)


        self.verticalLayout_3.addLayout(self.horizontalLayout_11)

        self.verticalSpacer_17 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_3.addItem(self.verticalSpacer_17)

        self.verticalSpacer_20 = QSpacerItem(20, 20, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_3.addItem(self.verticalSpacer_20)


        self.gridLayout_8.addLayout(self.verticalLayout_3, 0, 1, 1, 1)

        self.tutorialHolder.addWidget(self.iconsPage)
        self.allSet = QWidget()
        self.allSet.setObjectName(u"allSet")
        self.gridLayout_9 = QGridLayout(self.allSet)
        self.gridLayout_9.setObjectName(u"gridLayout_9")
        self.gridLayout_9.setContentsMargins(-1, 0, 0, 0)
        self.horizontalSpacer_10 = QSpacerItem(217, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_9.addItem(self.horizontalSpacer_10, 0, 0, 1, 1)

        self.verticalLayout_5 = QVBoxLayout()
        self.verticalLayout_5.setSpacing(0)
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.horizontalSpacer_8 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_8)

        self.endStar = QPushButton(self.allSet)
        self.endStar.setObjectName(u"endStar")
        self.endStar.setMinimumSize(QSize(40, 40))
        self.endStar.setMaximumSize(QSize(40, 40))
        self.endStar.setStyleSheet(u"")
        self.endStar.setIconSize(QSize(40, 40))

        self.horizontalLayout_5.addWidget(self.endStar)

        self.horizontalSpacer_9 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_5.addItem(self.horizontalSpacer_9)


        self.verticalLayout_5.addLayout(self.horizontalLayout_5)

        self.title_32 = QLabel(self.allSet)
        self.title_32.setObjectName(u"title_32")
        sizePolicy1.setHeightForWidth(self.title_32.sizePolicy().hasHeightForWidth())
        self.title_32.setSizePolicy(sizePolicy1)
        self.title_32.setMinimumSize(QSize(500, 45))
        self.title_32.setMaximumSize(QSize(1000, 30))
        self.title_32.setFont(font4)
        self.title_32.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_32.setAlignment(Qt.AlignHCenter|Qt.AlignTop)

        self.verticalLayout_5.addWidget(self.title_32)

        self.verticalSpacer_18 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_5.addItem(self.verticalSpacer_18)

        self.title_41 = QLabel(self.allSet)
        self.title_41.setObjectName(u"title_41")
        sizePolicy1.setHeightForWidth(self.title_41.sizePolicy().hasHeightForWidth())
        self.title_41.setSizePolicy(sizePolicy1)
        self.title_41.setMinimumSize(QSize(0, 25))
        self.title_41.setMaximumSize(QSize(16777215, 25))
        self.title_41.setFont(font1)
        self.title_41.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.title_41.setAlignment(Qt.AlignCenter)

        self.verticalLayout_5.addWidget(self.title_41)

        self.verticalSpacer_10 = QSpacerItem(20, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.verticalLayout_5.addItem(self.verticalSpacer_10)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.horizontalSpacer_20 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_3.addItem(self.horizontalSpacer_20)

        self.documentation_button = QPushButton(self.allSet)
        self.documentation_button.setObjectName(u"documentation_button")
        self.documentation_button.setMinimumSize(QSize(100, 30))
        self.documentation_button.setStyleSheet(u"QPushButton\n"
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

        self.horizontalLayout_3.addWidget(self.documentation_button)

        self.horizontalSpacer_21 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_3.addItem(self.horizontalSpacer_21)


        self.verticalLayout_5.addLayout(self.horizontalLayout_3)


        self.gridLayout_9.addLayout(self.verticalLayout_5, 0, 1, 1, 1)

        self.horizontalSpacer_11 = QSpacerItem(217, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_9.addItem(self.horizontalSpacer_11, 0, 2, 1, 1)

        self.verticalSpacer_7 = QSpacerItem(20, 32, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_9.addItem(self.verticalSpacer_7, 1, 1, 1, 1)

        self.tutorialHolder.addWidget(self.allSet)

        self.gridLayout_4.addWidget(self.tutorialHolder, 0, 0, 1, 1)

        self.scrollArea.setWidget(self.webScroll)

        self.verticalLayout_2.addWidget(self.scrollArea)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setSpacing(0)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalSpacer_3 = QSpacerItem(10, 10, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_3)

        self.leftButton = QPushButton(self.frame)
        self.leftButton.setObjectName(u"leftButton")
        self.leftButton.setMinimumSize(QSize(100, 30))
        self.leftButton.setStyleSheet(u"QPushButton\n"
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

        self.horizontalLayout.addWidget(self.leftButton)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setSpacing(5)
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.horizontalLayout_4.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.horizontalLayout_4.setContentsMargins(-1, -1, -1, 0)
        self.horizontalSpacer_5 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_4.addItem(self.horizontalSpacer_5)

        self.pageButton_00 = QRadioButton(self.frame)
        self.pageButton_00.setObjectName(u"pageButton_00")
        self.pageButton_00.setMinimumSize(QSize(10, 10))
        self.pageButton_00.setMaximumSize(QSize(10, 10))
        self.pageButton_00.setCursor(QCursor(Qt.PointingHandCursor))
        self.pageButton_00.setAutoFillBackground(False)
        self.pageButton_00.setStyleSheet(u"QRadioButton::indicator {\n"
"	background-color: rgb(250,250,250,120);\n"
"}\n"
"QRadioButton::indicator::unchecked {\n"
"    background-color: rgb(255,255,255,70);\n"
"	border-radius: 4px;\n"
"	width: 8px;\n"
"	height: 8px;\n"
"}\n"
"QRadioButton::indicator::checked {\n"
"    background-color: rgb(255,255,255,200);\n"
"border-radius: 5px;\n"
"	width: 10px;\n"
"	height: 10px;\n"
"}")
        self.pageButton_00.setIconSize(QSize(14, 14))
        self.pageButton_00.setChecked(False)

        self.horizontalLayout_4.addWidget(self.pageButton_00)

        self.pageButton_01 = QRadioButton(self.frame)
        self.pageButton_01.setObjectName(u"pageButton_01")
        self.pageButton_01.setMinimumSize(QSize(10, 10))
        self.pageButton_01.setMaximumSize(QSize(10, 10))
        self.pageButton_01.setCursor(QCursor(Qt.PointingHandCursor))
        self.pageButton_01.setStyleSheet(u"QRadioButton::indicator {\n"
"	background-color: rgb(250,250,250,120);\n"
"}\n"
"QRadioButton::indicator::unchecked {\n"
"    background-color: rgb(255,255,255,70);\n"
"	border-radius: 4px;\n"
"	width: 8px;\n"
"	height: 8px;\n"
"}\n"
"QRadioButton::indicator::checked {\n"
"    background-color: rgb(255,255,255,200);\n"
"border-radius: 5px;\n"
"	width: 10px;\n"
"	height: 10px;\n"
"}")
        self.pageButton_01.setIconSize(QSize(10, 10))

        self.horizontalLayout_4.addWidget(self.pageButton_01)

        self.pageButton_02 = QRadioButton(self.frame)
        self.pageButton_02.setObjectName(u"pageButton_02")
        self.pageButton_02.setMinimumSize(QSize(10, 10))
        self.pageButton_02.setMaximumSize(QSize(10, 10))
        self.pageButton_02.setCursor(QCursor(Qt.PointingHandCursor))
        self.pageButton_02.setAutoFillBackground(False)
        self.pageButton_02.setStyleSheet(u"QRadioButton::indicator {\n"
"	background-color: rgb(250,250,250,120);\n"
"}\n"
"QRadioButton::indicator::unchecked {\n"
"    background-color: rgb(255,255,255,70);\n"
"	border-radius: 4px;\n"
"	width: 8px;\n"
"	height: 8px;\n"
"}\n"
"QRadioButton::indicator::checked {\n"
"    background-color: rgb(255,255,255,200);\n"
"border-radius: 5px;\n"
"	width: 10px;\n"
"	height: 10px;\n"
"}")
        self.pageButton_02.setIconSize(QSize(14, 14))
        self.pageButton_02.setChecked(False)

        self.horizontalLayout_4.addWidget(self.pageButton_02)

        self.pageButton_03 = QRadioButton(self.frame)
        self.pageButton_03.setObjectName(u"pageButton_03")
        self.pageButton_03.setMinimumSize(QSize(10, 10))
        self.pageButton_03.setMaximumSize(QSize(10, 10))
        self.pageButton_03.setCursor(QCursor(Qt.PointingHandCursor))
        self.pageButton_03.setAutoFillBackground(False)
        self.pageButton_03.setStyleSheet(u"QRadioButton::indicator {\n"
"	background-color: rgb(250,250,250,120);\n"
"}\n"
"QRadioButton::indicator::unchecked {\n"
"    background-color: rgb(255,255,255,70);\n"
"	border-radius: 4px;\n"
"	width: 8px;\n"
"	height: 8px;\n"
"}\n"
"QRadioButton::indicator::checked {\n"
"    background-color: rgb(255,255,255,200);\n"
"border-radius: 5px;\n"
"	width: 10px;\n"
"	height: 10px;\n"
"}")
        self.pageButton_03.setIconSize(QSize(14, 14))
        self.pageButton_03.setChecked(False)

        self.horizontalLayout_4.addWidget(self.pageButton_03)

        self.pageButton_04 = QRadioButton(self.frame)
        self.pageButton_04.setObjectName(u"pageButton_04")
        self.pageButton_04.setMinimumSize(QSize(10, 10))
        self.pageButton_04.setMaximumSize(QSize(10, 10))
        self.pageButton_04.setCursor(QCursor(Qt.PointingHandCursor))
        self.pageButton_04.setAutoFillBackground(False)
        self.pageButton_04.setStyleSheet(u"QRadioButton::indicator {\n"
"	background-color: rgb(250,250,250,120);\n"
"}\n"
"QRadioButton::indicator::unchecked {\n"
"    background-color: rgb(255,255,255,70);\n"
"	border-radius: 4px;\n"
"	width: 8px;\n"
"	height: 8px;\n"
"}\n"
"QRadioButton::indicator::checked {\n"
"    background-color: rgb(255,255,255,200);\n"
"border-radius: 5px;\n"
"	width: 10px;\n"
"	height: 10px;\n"
"}")
        self.pageButton_04.setIconSize(QSize(14, 14))
        self.pageButton_04.setChecked(False)

        self.horizontalLayout_4.addWidget(self.pageButton_04)

        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_4.addItem(self.horizontalSpacer_2)


        self.horizontalLayout.addLayout(self.horizontalLayout_4)

        self.rightButton = QPushButton(self.frame)
        self.rightButton.setObjectName(u"rightButton")
        self.rightButton.setMinimumSize(QSize(100, 30))
        self.rightButton.setStyleSheet(u"QPushButton\n"
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

        self.horizontalLayout.addWidget(self.rightButton)

        self.horizontalSpacer_4 = QSpacerItem(10, 20, QSizePolicy.Minimum, QSizePolicy.Minimum)

        self.horizontalLayout.addItem(self.horizontalSpacer_4)


        self.verticalLayout_2.addLayout(self.horizontalLayout)


        self.gridLayout_2.addLayout(self.verticalLayout_2, 0, 0, 1, 1)


        self.horizontalLayout_2.addWidget(self.frame)


        self.gridLayout_3.addLayout(self.horizontalLayout_2, 1, 0, 1, 1)

        self.topLayout = QHBoxLayout()
        self.topLayout.setSpacing(0)
        self.topLayout.setObjectName(u"topLayout")
        self.topLayout.setSizeConstraint(QLayout.SetMaximumSize)
        self.topLayout.setContentsMargins(10, 10, 10, 0)
        self.smallLogo = QToolButton(self.tutorialFrame)
        self.smallLogo.setObjectName(u"smallLogo")
        self.smallLogo.setMinimumSize(QSize(32, 32))
        self.smallLogo.setMaximumSize(QSize(32, 32))
        self.smallLogo.setAutoFillBackground(False)
        self.smallLogo.setStyleSheet(u"border-radius: 1px;")
        icon = QIcon()
        icon.addFile(u"../../../../../.designer/backup/icons/system/mainLogo@2x.png", QSize(), QIcon.Normal, QIcon.Off)
        self.smallLogo.setIcon(icon)
        self.smallLogo.setIconSize(QSize(30, 30))

        self.topLayout.addWidget(self.smallLogo)

        self.horizontalSpacer = QSpacerItem(30, 32, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.topLayout.addItem(self.horizontalSpacer)

        self.closeButton = QPushButton(self.tutorialFrame)
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

        self.topLayout.addWidget(self.closeButton)


        self.gridLayout_3.addLayout(self.topLayout, 0, 0, 1, 1)


        self.gridLayout.addWidget(self.tutorialFrame, 0, 0, 1, 1)


        self.retranslateUi(Form)

        self.tutorialHolder.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.cosmosBigIcon.setText("")
        self.introText.setText(QCoreApplication.translate("Form", u"Hello from Cosmos!", None))
        self.title_15.setText(QCoreApplication.translate("Form", u"To open Cosmos, type the following shortcut:", None))
        self.hotkey.setText(QCoreApplication.translate("Form", u"CTRL+TAB", None))
        self.hotkeyValueText.setText(QCoreApplication.translate("Form", u"(Go ahead, try it)", None))
#if QT_CONFIG(statustip)
        self.handIcon.setStatusTip(QCoreApplication.translate("Form", u"Well done!", None))
#endif // QT_CONFIG(statustip)
        self.handIcon.setText("")
        self.title_20.setText(QCoreApplication.translate("Form", u"Add your own Actions", None))
        self.title_27.setText(QCoreApplication.translate("Form", u"You can add your own scripts and shelves into Cosmos to make them searchable", None))
        self.searchGifHolder.setText("")
        self.starPicture.setText("")
        self.title_35.setText(QCoreApplication.translate("Form", u"Star Actions you wanna see more", None))
        self.blacklistPicture.setText("")
        self.title_36.setText(QCoreApplication.translate("Form", u"Blacklist Actions you don't wanna see at all", None))
        self.optionsPicture.setText("")
        self.title_37.setText(QCoreApplication.translate("Form", u"See more options when available", None))
        self.endStar.setText("")
        self.title_32.setText(QCoreApplication.translate("Form", u"All set!", None))
        self.title_41.setText(QCoreApplication.translate("Form", u"If you like to find out more click below", None))
#if QT_CONFIG(statustip)
        self.documentation_button.setStatusTip(QCoreApplication.translate("Form", u"Open the documention in the webbrowser", None))
#endif // QT_CONFIG(statustip)
        self.documentation_button.setText(QCoreApplication.translate("Form", u"Open documentation", None))
#if QT_CONFIG(statustip)
        self.leftButton.setStatusTip(QCoreApplication.translate("Form", u"Previous", None))
#endif // QT_CONFIG(statustip)
        self.leftButton.setText(QCoreApplication.translate("Form", u"Skip", None))
#if QT_CONFIG(tooltip)
        self.pageButton_00.setToolTip(QCoreApplication.translate("Form", u"Change Index", None))
#endif // QT_CONFIG(tooltip)
        self.pageButton_00.setText("")
#if QT_CONFIG(tooltip)
        self.pageButton_01.setToolTip(QCoreApplication.translate("Form", u"Change Index", None))
#endif // QT_CONFIG(tooltip)
        self.pageButton_01.setText("")
#if QT_CONFIG(tooltip)
        self.pageButton_02.setToolTip(QCoreApplication.translate("Form", u"Change Index", None))
#endif // QT_CONFIG(tooltip)
        self.pageButton_02.setText("")
#if QT_CONFIG(tooltip)
        self.pageButton_03.setToolTip(QCoreApplication.translate("Form", u"Change Index", None))
#endif // QT_CONFIG(tooltip)
        self.pageButton_03.setText("")
#if QT_CONFIG(tooltip)
        self.pageButton_04.setToolTip(QCoreApplication.translate("Form", u"Change Index", None))
#endif // QT_CONFIG(tooltip)
        self.pageButton_04.setText("")
#if QT_CONFIG(statustip)
        self.rightButton.setStatusTip(QCoreApplication.translate("Form", u"New Tip", None))
#endif // QT_CONFIG(statustip)
        self.rightButton.setText(QCoreApplication.translate("Form", u"Next", None))
        self.smallLogo.setText("")
#if QT_CONFIG(statustip)
        self.closeButton.setStatusTip(QCoreApplication.translate("Form", u"Close the Tutorial", None))
#endif // QT_CONFIG(statustip)
        self.closeButton.setText("")
    # retranslateUi

