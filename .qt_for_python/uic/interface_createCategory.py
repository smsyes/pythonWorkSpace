# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'interface_createCategory.ui'
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
        Form.resize(447, 263)
        self.gridLayout_2 = QGridLayout(Form)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.gridLayout_2.setContentsMargins(0, 0, 0, 0)
        self.frame = QFrame(Form)
        self.frame.setObjectName(u"frame")
        self.frame.setStyleSheet(u"QFrame\n"
"{\n"
"border-radius: 10px;\n"
"background-color: rgb(27, 55, 69);\n"
"}")
        self.frame.setFrameShape(QFrame.NoFrame)
        self.frame.setFrameShadow(QFrame.Plain)
        self.verticalLayout = QVBoxLayout(self.frame)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.header = QLabel(self.frame)
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
        font.setPointSize(15)
        self.header.setFont(font)
        self.header.setStyleSheet(u"color: rgb(230, 230, 230);")
        self.header.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.header)

        self.nameLabel = QLabel(self.frame)
        self.nameLabel.setObjectName(u"nameLabel")
        sizePolicy1 = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.Expanding)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.nameLabel.sizePolicy().hasHeightForWidth())
        self.nameLabel.setSizePolicy(sizePolicy1)
        self.nameLabel.setMinimumSize(QSize(0, 20))
        self.nameLabel.setMaximumSize(QSize(500, 15))
        self.nameLabel.setStyleSheet(u"color: rgb(160, 160, 160);")
        self.nameLabel.setAlignment(Qt.AlignBottom|Qt.AlignLeading|Qt.AlignLeft)

        self.verticalLayout.addWidget(self.nameLabel)

        self.nameField = QLineEdit(self.frame)
        self.nameField.setObjectName(u"nameField")
        sizePolicy2 = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.Minimum)
        sizePolicy2.setHorizontalStretch(0)
        sizePolicy2.setVerticalStretch(0)
        sizePolicy2.setHeightForWidth(self.nameField.sizePolicy().hasHeightForWidth())
        self.nameField.setSizePolicy(sizePolicy2)
        self.nameField.setMinimumSize(QSize(200, 25))
        self.nameField.setMaximumSize(QSize(800, 25))
        self.nameField.setStyleSheet(u"background-color: rgb(0, 0, 0,50);\n"
"color: rgb(200, 200, 200);\n"
"padding-left: 5px;\n"
"")
        self.nameField.setFrame(False)

        self.verticalLayout.addWidget(self.nameField)

        self.nameLabel_2 = QLabel(self.frame)
        self.nameLabel_2.setObjectName(u"nameLabel_2")
        sizePolicy1.setHeightForWidth(self.nameLabel_2.sizePolicy().hasHeightForWidth())
        self.nameLabel_2.setSizePolicy(sizePolicy1)
        self.nameLabel_2.setMinimumSize(QSize(0, 20))
        self.nameLabel_2.setMaximumSize(QSize(500, 15))
        self.nameLabel_2.setStyleSheet(u"color: rgb(160, 160, 160);")
        self.nameLabel_2.setAlignment(Qt.AlignBottom|Qt.AlignLeading|Qt.AlignLeft)

        self.verticalLayout.addWidget(self.nameLabel_2)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setSpacing(0)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.categoryList = QComboBox(self.frame)
        self.categoryList.setObjectName(u"categoryList")
        sizePolicy2.setHeightForWidth(self.categoryList.sizePolicy().hasHeightForWidth())
        self.categoryList.setSizePolicy(sizePolicy2)
        self.categoryList.setMinimumSize(QSize(200, 25))
        self.categoryList.setMaximumSize(QSize(500, 25))
        self.categoryList.setStyleSheet(u"QComboBox\n"
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

        self.horizontalLayout.addWidget(self.categoryList)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.cancelButton = QPushButton(self.frame)
        self.cancelButton.setObjectName(u"cancelButton")
        self.cancelButton.setEnabled(True)
        self.cancelButton.setMinimumSize(QSize(0, 30))
        self.cancelButton.setMaximumSize(QSize(100, 30))
        self.cancelButton.setStyleSheet(u"QPushButton\n"
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

        self.horizontalLayout_2.addWidget(self.cancelButton)

        self.saveButton = QPushButton(self.frame)
        self.saveButton.setObjectName(u"saveButton")
        self.saveButton.setEnabled(True)
        sizePolicy3 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Minimum)
        sizePolicy3.setHorizontalStretch(0)
        sizePolicy3.setVerticalStretch(0)
        sizePolicy3.setHeightForWidth(self.saveButton.sizePolicy().hasHeightForWidth())
        self.saveButton.setSizePolicy(sizePolicy3)
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

        self.horizontalLayout_2.addWidget(self.saveButton)


        self.verticalLayout.addLayout(self.horizontalLayout_2)


        self.gridLayout_2.addWidget(self.frame, 0, 0, 1, 1)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.header.setText(QCoreApplication.translate("Form", u"Add Category:", None))
        self.nameLabel.setText(QCoreApplication.translate("Form", u"Category Name:", None))
#if QT_CONFIG(tooltip)
        self.nameField.setToolTip(QCoreApplication.translate("Form", u"New category name", None))
#endif // QT_CONFIG(tooltip)
#if QT_CONFIG(statustip)
        self.nameField.setStatusTip(QCoreApplication.translate("Form", u"Name of the Category", None))
#endif // QT_CONFIG(statustip)
        self.nameField.setText("")
        self.nameLabel_2.setText(QCoreApplication.translate("Form", u"Parent under existing (Optional)", None))
#if QT_CONFIG(statustip)
        self.categoryList.setStatusTip(QCoreApplication.translate("Form", u"Choose Category", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(statustip)
        self.cancelButton.setStatusTip(QCoreApplication.translate("Form", u"Close the Category window", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.cancelButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.cancelButton.setText(QCoreApplication.translate("Form", u"Cancel", None))
#if QT_CONFIG(statustip)
        self.saveButton.setStatusTip(QCoreApplication.translate("Form", u"Add a new Category", None))
#endif // QT_CONFIG(statustip)
#if QT_CONFIG(whatsthis)
        self.saveButton.setWhatsThis("")
#endif // QT_CONFIG(whatsthis)
        self.saveButton.setText(QCoreApplication.translate("Form", u"Add", None))
    # retranslateUi

