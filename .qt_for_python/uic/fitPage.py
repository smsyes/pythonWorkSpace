# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'fitPage.ui'
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
        Form.resize(226, 456)
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.templateToolBox = QToolBox(Form)
        self.templateToolBox.setObjectName(u"templateToolBox")
        self.templateToolBox.setFrameShadow(QFrame.Plain)
        self.templateToolBox.setLineWidth(0)
        self.fitSkeleton_page = QWidget()
        self.fitSkeleton_page.setObjectName(u"fitSkeleton_page")
        self.fitSkeleton_page.setGeometry(QRect(0, 0, 208, 210))
        self.gridLayout_2 = QGridLayout(self.fitSkeleton_page)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.temp_listWidget = QListWidget(self.fitSkeleton_page)
        self.temp_listWidget.setObjectName(u"temp_listWidget")
        self.temp_listWidget.setFrameShape(QFrame.NoFrame)
        self.temp_listWidget.setFrameShadow(QFrame.Plain)
        self.temp_listWidget.setLineWidth(0)
        self.temp_listWidget.setDragEnabled(True)
        self.temp_listWidget.setDragDropMode(QAbstractItemView.NoDragDrop)
        self.temp_listWidget.setDefaultDropAction(Qt.IgnoreAction)
        self.temp_listWidget.setAlternatingRowColors(False)
        self.temp_listWidget.setSelectionMode(QAbstractItemView.ExtendedSelection)

        self.gridLayout_2.addWidget(self.temp_listWidget, 0, 0, 1, 1)

        self.templateToolBox.addItem(self.fitSkeleton_page, u"Template Skeleton")
        self.partsSkeleton_page = QWidget()
        self.partsSkeleton_page.setObjectName(u"partsSkeleton_page")
        self.partsSkeleton_page.setGeometry(QRect(0, 0, 208, 210))
        self.gridLayout_3 = QGridLayout(self.partsSkeleton_page)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.parts_listWidget = QListWidget(self.partsSkeleton_page)
        self.parts_listWidget.setObjectName(u"parts_listWidget")
        self.parts_listWidget.setFrameShape(QFrame.NoFrame)
        self.parts_listWidget.setFrameShadow(QFrame.Plain)
        self.parts_listWidget.setLineWidth(0)
        self.parts_listWidget.setDragEnabled(True)
        self.parts_listWidget.setDragDropMode(QAbstractItemView.NoDragDrop)
        self.parts_listWidget.setAlternatingRowColors(False)
        self.parts_listWidget.setSelectionMode(QAbstractItemView.MultiSelection)

        self.gridLayout_3.addWidget(self.parts_listWidget, 0, 0, 1, 1)

        self.templateToolBox.addItem(self.partsSkeleton_page, u"Parts Skeleton")

        self.gridLayout.addWidget(self.templateToolBox, 0, 0, 1, 1)

        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout.addItem(self.verticalSpacer, 1, 0, 1, 1)


        self.retranslateUi(Form)

        self.templateToolBox.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.templateToolBox.setItemText(self.templateToolBox.indexOf(self.fitSkeleton_page), QCoreApplication.translate("Form", u"Template Skeleton", None))
        self.templateToolBox.setItemText(self.templateToolBox.indexOf(self.partsSkeleton_page), QCoreApplication.translate("Form", u"Parts Skeleton", None))
    # retranslateUi

