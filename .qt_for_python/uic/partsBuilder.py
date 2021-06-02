# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'partsBuilder.ui'
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
        Form.resize(471, 724)
        self.verticalLayout_6 = QVBoxLayout(Form)
        self.verticalLayout_6.setObjectName(u"verticalLayout_6")
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.fitRef_label = QLabel(Form)
        self.fitRef_label.setObjectName(u"fitRef_label")
        self.fitRef_label.setAlignment(Qt.AlignBottom|Qt.AlignHCenter)

        self.verticalLayout_2.addWidget(self.fitRef_label)

        self.fitRef_comboBox = QComboBox(Form)
        self.fitRef_comboBox.setObjectName(u"fitRef_comboBox")

        self.verticalLayout_2.addWidget(self.fitRef_comboBox)

        self.fitRef_pushButton = QPushButton(Form)
        self.fitRef_pushButton.setObjectName(u"fitRef_pushButton")

        self.verticalLayout_2.addWidget(self.fitRef_pushButton)


        self.verticalLayout_6.addLayout(self.verticalLayout_2)

        self.line = QFrame(Form)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_6.addWidget(self.line)

        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.fitPrt_label = QLabel(Form)
        self.fitPrt_label.setObjectName(u"fitPrt_label")
        self.fitPrt_label.setAlignment(Qt.AlignBottom|Qt.AlignHCenter)

        self.verticalLayout_3.addWidget(self.fitPrt_label)

        self.fitPrt_comboBox = QComboBox(Form)
        self.fitPrt_comboBox.setObjectName(u"fitPrt_comboBox")

        self.verticalLayout_3.addWidget(self.fitPrt_comboBox)

        self.prefix_textEdit = QLineEdit(Form)
        self.prefix_textEdit.setObjectName(u"prefix_textEdit")
        self.prefix_textEdit.setAlignment(Qt.AlignCenter)

        self.verticalLayout_3.addWidget(self.prefix_textEdit)

        self.addParts_pushButton = QPushButton(Form)
        self.addParts_pushButton.setObjectName(u"addParts_pushButton")

        self.verticalLayout_3.addWidget(self.addParts_pushButton)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.Parts_treeWidget = QTreeWidget(Form)
        self.Parts_treeWidget.setObjectName(u"Parts_treeWidget")
        self.Parts_treeWidget.setDragEnabled(True)
        self.Parts_treeWidget.setDragDropMode(QAbstractItemView.InternalMove)
        self.Parts_treeWidget.setSelectionMode(QAbstractItemView.SingleSelection)
        self.Parts_treeWidget.header().setDefaultSectionSize(100)

        self.horizontalLayout_4.addWidget(self.Parts_treeWidget)

        self.verticalLayout_5 = QVBoxLayout()
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.referencePath_label = QLabel(Form)
        self.referencePath_label.setObjectName(u"referencePath_label")

        self.verticalLayout_5.addWidget(self.referencePath_label)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.bendy_label = QLabel(Form)
        self.bendy_label.setObjectName(u"bendy_label")

        self.horizontalLayout_3.addWidget(self.bendy_label)

        self.bendyIndex_spinBox = QSpinBox(Form)
        self.bendyIndex_spinBox.setObjectName(u"bendyIndex_spinBox")

        self.horizontalLayout_3.addWidget(self.bendyIndex_spinBox)

        self.bendy_pushButton = QPushButton(Form)
        self.bendy_pushButton.setObjectName(u"bendy_pushButton")

        self.horizontalLayout_3.addWidget(self.bendy_pushButton)


        self.verticalLayout_5.addLayout(self.horizontalLayout_3)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.prefix_label = QLabel(Form)
        self.prefix_label.setObjectName(u"prefix_label")

        self.horizontalLayout.addWidget(self.prefix_label)

        self.prefixLabel_comboBox = QComboBox(Form)
        self.prefixLabel_comboBox.addItem("")
        self.prefixLabel_comboBox.addItem("")
        self.prefixLabel_comboBox.addItem("")
        self.prefixLabel_comboBox.setObjectName(u"prefixLabel_comboBox")
        self.prefixLabel_comboBox.setEditable(True)

        self.horizontalLayout.addWidget(self.prefixLabel_comboBox)

        self.Label_pushButton = QPushButton(Form)
        self.Label_pushButton.setObjectName(u"Label_pushButton")

        self.horizontalLayout.addWidget(self.Label_pushButton)


        self.verticalLayout_5.addLayout(self.horizontalLayout)

        self.verticalLayout_4 = QVBoxLayout()
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.follow_label = QLabel(Form)
        self.follow_label.setObjectName(u"follow_label")

        self.verticalLayout_4.addWidget(self.follow_label)

        self.listWidget = QListWidget(Form)
        self.listWidget.setObjectName(u"listWidget")
        self.listWidget.setDragEnabled(True)
        self.listWidget.setDragDropMode(QAbstractItemView.InternalMove)
        self.listWidget.setSelectionMode(QAbstractItemView.ExtendedSelection)
        self.listWidget.setSelectionBehavior(QAbstractItemView.SelectItems)

        self.verticalLayout_4.addWidget(self.listWidget)

        self.mirror_pushButton = QPushButton(Form)
        self.mirror_pushButton.setObjectName(u"mirror_pushButton")

        self.verticalLayout_4.addWidget(self.mirror_pushButton)


        self.verticalLayout_5.addLayout(self.verticalLayout_4)


        self.horizontalLayout_4.addLayout(self.verticalLayout_5)


        self.verticalLayout_3.addLayout(self.horizontalLayout_4)

        self.clear_pushButton = QPushButton(Form)
        self.clear_pushButton.setObjectName(u"clear_pushButton")

        self.verticalLayout_3.addWidget(self.clear_pushButton)


        self.verticalLayout_6.addLayout(self.verticalLayout_3)

        self.line_2 = QFrame(Form)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_6.addWidget(self.line_2)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.build_label = QLabel(Form)
        self.build_label.setObjectName(u"build_label")
        self.build_label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.build_label)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.EditMode_pushButton = QPushButton(Form)
        self.EditMode_pushButton.setObjectName(u"EditMode_pushButton")

        self.horizontalLayout_2.addWidget(self.EditMode_pushButton)

        self.build_pushButton = QPushButton(Form)
        self.build_pushButton.setObjectName(u"build_pushButton")

        self.horizontalLayout_2.addWidget(self.build_pushButton)


        self.verticalLayout.addLayout(self.horizontalLayout_2)


        self.verticalLayout_6.addLayout(self.verticalLayout)


        self.retranslateUi(Form)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.fitRef_label.setText(QCoreApplication.translate("Form", u"__Fit Reference__", None))
        self.fitRef_pushButton.setText(QCoreApplication.translate("Form", u"Add Reference", None))
        self.fitPrt_label.setText(QCoreApplication.translate("Form", u"__Fit Parts__", None))
        self.prefix_textEdit.setText(QCoreApplication.translate("Form", u"Base Name", None))
        self.addParts_pushButton.setText(QCoreApplication.translate("Form", u"Add Parts", None))
        ___qtreewidgetitem = self.Parts_treeWidget.headerItem()
        ___qtreewidgetitem.setText(0, QCoreApplication.translate("Form", u"Tree Structure", None));
        self.referencePath_label.setText(QCoreApplication.translate("Form", u"Reference File Path", None))
        self.bendy_label.setText(QCoreApplication.translate("Form", u"Bendy Index", None))
        self.bendy_pushButton.setText(QCoreApplication.translate("Form", u"Set", None))
        self.prefix_label.setText(QCoreApplication.translate("Form", u"Label", None))
        self.prefixLabel_comboBox.setItemText(0, QCoreApplication.translate("Form", u"L", None))
        self.prefixLabel_comboBox.setItemText(1, QCoreApplication.translate("Form", u"R", None))
        self.prefixLabel_comboBox.setItemText(2, QCoreApplication.translate("Form", u"M", None))

        self.Label_pushButton.setText(QCoreApplication.translate("Form", u"Add", None))
        self.follow_label.setText(QCoreApplication.translate("Form", u"Follow", None))
        self.mirror_pushButton.setText(QCoreApplication.translate("Form", u"Mirror", None))
        self.clear_pushButton.setText(QCoreApplication.translate("Form", u"Clear", None))
        self.build_label.setText(QCoreApplication.translate("Form", u"__Build__", None))
        self.EditMode_pushButton.setText(QCoreApplication.translate("Form", u"EditMode", None))
        self.build_pushButton.setText(QCoreApplication.translate("Form", u"Build", None))
    # retranslateUi

