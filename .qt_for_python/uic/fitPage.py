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
        self.fitToolBox = QToolBox(Form)
        self.fitToolBox.setObjectName(u"fitToolBox")
        self.fitToolBox.setFrameShadow(QFrame.Sunken)
        self.fitToolBox.setLineWidth(1)
        self.fitSkeleton_page = QWidget()
        self.fitSkeleton_page.setObjectName(u"fitSkeleton_page")
        self.fitSkeleton_page.setGeometry(QRect(0, 0, 208, 386))
        self.gridLayout_2 = QGridLayout(self.fitSkeleton_page)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.fit_treeWidget = QTreeWidget(self.fitSkeleton_page)
        self.fit_treeWidget.headerItem().setText(0, "")
        self.fit_treeWidget.setObjectName(u"fit_treeWidget")
        self.fit_treeWidget.setFrameShape(QFrame.NoFrame)
        self.fit_treeWidget.setColumnCount(1)

        self.gridLayout_2.addWidget(self.fit_treeWidget, 0, 0, 1, 1)

        self.fitToolBox.addItem(self.fitSkeleton_page, u"Fit Skeleton")
        self.partsSkeleton_page = QWidget()
        self.partsSkeleton_page.setObjectName(u"partsSkeleton_page")
        self.partsSkeleton_page.setGeometry(QRect(0, 0, 208, 386))
        self.gridLayout_3 = QGridLayout(self.partsSkeleton_page)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.part_treeWidget = QTreeWidget(self.partsSkeleton_page)
        self.part_treeWidget.headerItem().setText(0, "")
        self.part_treeWidget.setObjectName(u"part_treeWidget")
        self.part_treeWidget.setFrameShape(QFrame.NoFrame)
        self.part_treeWidget.setFrameShadow(QFrame.Raised)
        self.part_treeWidget.setColumnCount(1)

        self.gridLayout_3.addWidget(self.part_treeWidget, 0, 0, 1, 1)

        self.fitToolBox.addItem(self.partsSkeleton_page, u"Parts Skeleton")

        self.gridLayout.addWidget(self.fitToolBox, 0, 0, 1, 1)


        self.retranslateUi(Form)

        self.fitToolBox.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.fitToolBox.setItemText(self.fitToolBox.indexOf(self.fitSkeleton_page), QCoreApplication.translate("Form", u"Fit Skeleton", None))
        self.fitToolBox.setItemText(self.fitToolBox.indexOf(self.partsSkeleton_page), QCoreApplication.translate("Form", u"Parts Skeleton", None))
    # retranslateUi

