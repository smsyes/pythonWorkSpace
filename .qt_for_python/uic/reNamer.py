# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'reNamer.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_reNamer(object):
    def setupUi(self, reNamer):
        if not reNamer.objectName():
            reNamer.setObjectName(u"reNamer")
        reNamer.resize(632, 587)
        self.centralwidget = QWidget(reNamer)
        self.centralwidget.setObjectName(u"centralwidget")
        self.verticalLayout_2 = QVBoxLayout(self.centralwidget)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.groupBox = QGroupBox(self.centralwidget)
        self.groupBox.setObjectName(u"groupBox")
        self.verticalLayout = QVBoxLayout(self.groupBox)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.verticalLayout_4 = QVBoxLayout()
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.label_5 = QLabel(self.groupBox)
        self.label_5.setObjectName(u"label_5")

        self.verticalLayout_4.addWidget(self.label_5)

        self.label_6 = QLabel(self.groupBox)
        self.label_6.setObjectName(u"label_6")

        self.verticalLayout_4.addWidget(self.label_6)


        self.horizontalLayout_5.addLayout(self.verticalLayout_4)

        self.verticalLayout_5 = QVBoxLayout()
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.getOldName = QLineEdit(self.groupBox)
        self.getOldName.setObjectName(u"getOldName")
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.getOldName.sizePolicy().hasHeightForWidth())
        self.getOldName.setSizePolicy(sizePolicy)

        self.verticalLayout_5.addWidget(self.getOldName)

        self.getNewName = QLineEdit(self.groupBox)
        self.getNewName.setObjectName(u"getNewName")

        self.verticalLayout_5.addWidget(self.getNewName)


        self.horizontalLayout_5.addLayout(self.verticalLayout_5)


        self.verticalLayout_3.addLayout(self.horizontalLayout_5)

        self.changeName = QPushButton(self.groupBox)
        self.changeName.setObjectName(u"changeName")

        self.verticalLayout_3.addWidget(self.changeName)


        self.verticalLayout.addLayout(self.verticalLayout_3)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.label = QLabel(self.groupBox)
        self.label.setObjectName(u"label")

        self.horizontalLayout.addWidget(self.label)

        self.getName = QLineEdit(self.groupBox)
        self.getName.setObjectName(u"getName")

        self.horizontalLayout.addWidget(self.getName)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.label_2 = QLabel(self.groupBox)
        self.label_2.setObjectName(u"label_2")

        self.horizontalLayout_2.addWidget(self.label_2)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.horizontalLayout_2.addItem(self.horizontalSpacer)

        self.pad = QLineEdit(self.groupBox)
        self.pad.setObjectName(u"pad")
        self.pad.setMaximumSize(QSize(50, 16777215))

        self.horizontalLayout_2.addWidget(self.pad)


        self.verticalLayout.addLayout(self.horizontalLayout_2)

        self.runName = QPushButton(self.groupBox)
        self.runName.setObjectName(u"runName")

        self.verticalLayout.addWidget(self.runName)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.label_4 = QLabel(self.groupBox)
        self.label_4.setObjectName(u"label_4")
        sizePolicy1 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Preferred)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.label_4.sizePolicy().hasHeightForWidth())
        self.label_4.setSizePolicy(sizePolicy1)

        self.horizontalLayout_4.addWidget(self.label_4)

        self.getPrefix = QLineEdit(self.groupBox)
        self.getPrefix.setObjectName(u"getPrefix")
        self.getPrefix.setCursorMoveStyle(Qt.LogicalMoveStyle)

        self.horizontalLayout_4.addWidget(self.getPrefix)


        self.verticalLayout.addLayout(self.horizontalLayout_4)

        self.prefixAppend = QPushButton(self.groupBox)
        self.prefixAppend.setObjectName(u"prefixAppend")
        self.prefixAppend.setAutoDefault(False)

        self.verticalLayout.addWidget(self.prefixAppend)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.label_3 = QLabel(self.groupBox)
        self.label_3.setObjectName(u"label_3")
        sizePolicy1.setHeightForWidth(self.label_3.sizePolicy().hasHeightForWidth())
        self.label_3.setSizePolicy(sizePolicy1)

        self.horizontalLayout_3.addWidget(self.label_3)

        self.getSuffix = QLineEdit(self.groupBox)
        self.getSuffix.setObjectName(u"getSuffix")

        self.horizontalLayout_3.addWidget(self.getSuffix)


        self.verticalLayout.addLayout(self.horizontalLayout_3)

        self.appendSuffix = QPushButton(self.groupBox)
        self.appendSuffix.setObjectName(u"appendSuffix")

        self.verticalLayout.addWidget(self.appendSuffix)


        self.verticalLayout_2.addWidget(self.groupBox)

        reNamer.setCentralWidget(self.centralwidget)

        self.retranslateUi(reNamer)

        QMetaObject.connectSlotsByName(reNamer)
    # setupUi

    def retranslateUi(self, reNamer):
        reNamer.setWindowTitle(QCoreApplication.translate("reNamer", u"reNamer v01", None))
        self.groupBox.setTitle(QCoreApplication.translate("reNamer", u"reName", None))
        self.label_5.setText(QCoreApplication.translate("reNamer", u"oldName  : ", None))
        self.label_6.setText(QCoreApplication.translate("reNamer", u"newName : ", None))
        self.changeName.setText(QCoreApplication.translate("reNamer", u"change", None))
        self.changeName.setProperty("+c", QCoreApplication.translate("reNamer", u"\"oldChange()\"", None))
        self.label.setText(QCoreApplication.translate("reNamer", u"name : ", None))
        self.label_2.setText(QCoreApplication.translate("reNamer", u"padding :", None))
        self.pad.setText(QCoreApplication.translate("reNamer", u"1", None))
        self.pad.setProperty("+tcc", QCoreApplication.translate("reNamer", u"\"getPad()\"", None))
        self.runName.setText(QCoreApplication.translate("reNamer", u"reName", None))
        self.runName.setProperty("+c", QCoreApplication.translate("reNamer", u"\"runRename()\"", None))
        self.label_4.setText(QCoreApplication.translate("reNamer", u"prefix :", None))
        self.prefixAppend.setText(QCoreApplication.translate("reNamer", u"append", None))
        self.prefixAppend.setProperty("+c", QCoreApplication.translate("reNamer", u"\"appendPrefix()\"", None))
        self.label_3.setText(QCoreApplication.translate("reNamer", u"suffix : ", None))
        self.appendSuffix.setText(QCoreApplication.translate("reNamer", u"append", None))
        self.appendSuffix.setProperty("+c", QCoreApplication.translate("reNamer", u"\"appendSuffix()\"", None))
    # retranslateUi

