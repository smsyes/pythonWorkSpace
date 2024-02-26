# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'MHADVfWnUgQ.ui'
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
        Form.resize(320, 351)
        Form.setLayoutDirection(Qt.LeftToRight)
        self.gridLayout_3 = QGridLayout(Form)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.gridLayout_3.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.toolBox = QToolBox(Form)
        self.toolBox.setObjectName(u"toolBox")
        self.toolBox.setContextMenuPolicy(Qt.DefaultContextMenu)
        self.toolBox.setLayoutDirection(Qt.LeftToRight)
        self.toolBox.setAutoFillBackground(False)
        self.toolBox.setStyleSheet(u"")
        self.page = QWidget()
        self.page.setObjectName(u"page")
        self.page.setGeometry(QRect(0, 0, 302, 281))
        self.formLayout = QFormLayout(self.page)
        self.formLayout.setObjectName(u"formLayout")
        self.formLayout.setLabelAlignment(Qt.AlignCenter)
        self.formLayout.setFormAlignment(Qt.AlignHCenter|Qt.AlignTop)
        self.widget = QWidget(self.page)
        self.widget.setObjectName(u"widget")
        self.gridLayout = QGridLayout(self.widget)
        self.gridLayout.setObjectName(u"gridLayout")
        self.label_4 = QLabel(self.widget)
        self.label_4.setObjectName(u"label_4")
        sizePolicy = QSizePolicy(QSizePolicy.Fixed, QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.label_4.sizePolicy().hasHeightForWidth())
        self.label_4.setSizePolicy(sizePolicy)

        self.gridLayout.addWidget(self.label_4, 0, 0, 1, 1)

        self.line = QFrame(self.widget)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.gridLayout.addWidget(self.line, 1, 0, 1, 1)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setSpacing(6)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.horizontalLayout.setSizeConstraint(QLayout.SetDefaultConstraint)
        self.horizontalLayout.setContentsMargins(0, 0, 0, -1)
        self.label_3 = QLabel(self.widget)
        self.label_3.setObjectName(u"label_3")
        sizePolicy.setHeightForWidth(self.label_3.sizePolicy().hasHeightForWidth())
        self.label_3.setSizePolicy(sizePolicy)

        self.horizontalLayout.addWidget(self.label_3)

        self.JsonOpenPB = QPushButton(self.widget)
        self.JsonOpenPB.setObjectName(u"JsonOpenPB")
        self.JsonOpenPB.setMaximumSize(QSize(20, 30))
        self.JsonOpenPB.setStyleSheet(u"background-color: rgb(81, 81, 81);")
        self.JsonOpenPB.setFlat(False)

        self.horizontalLayout.addWidget(self.JsonOpenPB)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.SubAddCB = QCheckBox(self.widget)
        self.SubAddCB.setObjectName(u"SubAddCB")
        self.SubAddCB.setChecked(True)

        self.verticalLayout.addWidget(self.SubAddCB)

        self.SpineIKAxisCB = QCheckBox(self.widget)
        self.SpineIKAxisCB.setObjectName(u"SpineIKAxisCB")
        self.SpineIKAxisCB.setChecked(True)

        self.verticalLayout.addWidget(self.SpineIKAxisCB)

        self.OneRootCB = QCheckBox(self.widget)
        self.OneRootCB.setObjectName(u"OneRootCB")
        self.OneRootCB.setChecked(True)

        self.verticalLayout.addWidget(self.OneRootCB)

        self.GroupCB = QCheckBox(self.widget)
        self.GroupCB.setObjectName(u"GroupCB")
        self.GroupCB.setChecked(True)

        self.verticalLayout.addWidget(self.GroupCB)

        self.SetsCB = QCheckBox(self.widget)
        self.SetsCB.setObjectName(u"SetsCB")
        self.SetsCB.setChecked(True)

        self.verticalLayout.addWidget(self.SetsCB)

        self.OLColorCB = QCheckBox(self.widget)
        self.OLColorCB.setObjectName(u"OLColorCB")
        self.OLColorCB.setChecked(True)

        self.verticalLayout.addWidget(self.OLColorCB)

        self.AddAttrCB = QCheckBox(self.widget)
        self.AddAttrCB.setObjectName(u"AddAttrCB")
        self.AddAttrCB.setChecked(True)

        self.verticalLayout.addWidget(self.AddAttrCB)

        self.ArrangementPB = QPushButton(self.widget)
        self.ArrangementPB.setObjectName(u"ArrangementPB")
        self.ArrangementPB.setStyleSheet(u"background-color: rgb(81, 81, 81);")

        self.verticalLayout.addWidget(self.ArrangementPB)


        self.gridLayout.addLayout(self.verticalLayout, 2, 0, 1, 1)


        self.formLayout.setWidget(0, QFormLayout.LabelRole, self.widget)

        self.toolBox.addItem(self.page, u"Arrangement")
        self.page_2 = QWidget()
        self.page_2.setObjectName(u"page_2")
        self.page_2.setGeometry(QRect(0, 0, 312, 268))
        self.formLayout_2 = QFormLayout(self.page_2)
        self.formLayout_2.setObjectName(u"formLayout_2")
        self.widget_2 = QWidget(self.page_2)
        self.widget_2.setObjectName(u"widget_2")
        self.gridLayout_2 = QGridLayout(self.widget_2)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.label = QLabel(self.widget_2)
        self.label.setObjectName(u"label")
        self.label.setEnabled(True)
        sizePolicy.setHeightForWidth(self.label.sizePolicy().hasHeightForWidth())
        self.label.setSizePolicy(sizePolicy)
        self.label.setFrameShadow(QFrame.Plain)
        self.label.setLineWidth(1)
        self.label.setTextFormat(Qt.AutoText)
        self.label.setScaledContents(False)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setWordWrap(False)

        self.gridLayout_2.addWidget(self.label, 0, 0, 1, 1)

        self.label_2 = QLabel(self.widget_2)
        self.label_2.setObjectName(u"label_2")
        sizePolicy.setHeightForWidth(self.label_2.sizePolicy().hasHeightForWidth())
        self.label_2.setSizePolicy(sizePolicy)
        font = QFont()
        font.setFamily(u"\uad74\ub9bc")
        font.setPointSize(7)
        self.label_2.setFont(font)
        self.label_2.setLayoutDirection(Qt.LeftToRight)
        self.label_2.setAutoFillBackground(False)
        self.label_2.setInputMethodHints(Qt.ImhNone)
        self.label_2.setMidLineWidth(0)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.gridLayout_2.addWidget(self.label_2, 1, 0, 1, 1)

        self.DuplicateBindPB = QPushButton(self.widget_2)
        self.DuplicateBindPB.setObjectName(u"DuplicateBindPB")
        sizePolicy1 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Fixed)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.DuplicateBindPB.sizePolicy().hasHeightForWidth())
        self.DuplicateBindPB.setSizePolicy(sizePolicy1)
        self.DuplicateBindPB.setStyleSheet(u"background-color: rgb(81, 81, 81);")

        self.gridLayout_2.addWidget(self.DuplicateBindPB, 2, 0, 1, 1)


        self.formLayout_2.setWidget(0, QFormLayout.LabelRole, self.widget_2)

        self.toolBox.addItem(self.page_2, u"MeshDuplicateBind")

        self.gridLayout_3.addWidget(self.toolBox, 0, 0, 1, 1)


        self.retranslateUi(Form)

        self.toolBox.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"Metahuman Advanced Rigging Arrangement..", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"MH JSON", None))
        self.JsonOpenPB.setText(QCoreApplication.translate("Form", u"?", None))
        self.SubAddCB.setText(QCoreApplication.translate("Form", u"ADV IKArmSub Add", None))
        self.SpineIKAxisCB.setText(QCoreApplication.translate("Form", u"ADV IKSpine Twist Axis", None))
        self.OneRootCB.setText(QCoreApplication.translate("Form", u"One Root", None))
        self.GroupCB.setText(QCoreApplication.translate("Form", u"Group Construction", None))
        self.SetsCB.setText(QCoreApplication.translate("Form", u"Sets", None))
        self.OLColorCB.setText(QCoreApplication.translate("Form", u"Outliner Color", None))
        self.AddAttrCB.setText(QCoreApplication.translate("Form", u"Main Add Attr", None))
        self.ArrangementPB.setText(QCoreApplication.translate("Form", u"MH ADV Arrangement", None))
        self.toolBox.setItemText(self.toolBox.indexOf(self.page), QCoreApplication.translate("Form", u"Arrangement", None))
        self.label.setText(QCoreApplication.translate("Form", u"**Please select the objects before execution**", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"ex) \"head_lod0_grp\" hierarchy, \"m_med_nrw_body_lod0_mesh\"..", None))
        self.DuplicateBindPB.setText(QCoreApplication.translate("Form", u"MH Mesh Duplicate Bind", None))
        self.toolBox.setItemText(self.toolBox.indexOf(self.page_2), QCoreApplication.translate("Form", u"MeshDuplicateBind", None))
    # retranslateUi

