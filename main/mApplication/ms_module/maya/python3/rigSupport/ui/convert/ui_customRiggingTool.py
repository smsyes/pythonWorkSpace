# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'customRiggingToolBZeuIv.ui'
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
        Form.resize(777, 1213)
        Form.setStyleSheet(u"")
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName(u"gridLayout")
        self.horizontalLayout_8 = QHBoxLayout()
        self.horizontalLayout_8.setObjectName(u"horizontalLayout_8")
        self.label_5 = QLabel(Form)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setAlignment(Qt.AlignRight|Qt.AlignTrailing|Qt.AlignVCenter)

        self.horizontalLayout_8.addWidget(self.label_5)

        self.label_10 = QLabel(Form)
        self.label_10.setObjectName(u"label_10")

        self.horizontalLayout_8.addWidget(self.label_10)


        self.gridLayout.addLayout(self.horizontalLayout_8, 5, 0, 1, 1)

        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.horizontalSpacer_2 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_2)

        self.label_7 = QLabel(Form)
        self.label_7.setObjectName(u"label_7")
        font = QFont()
        font.setFamily(u"Cascadia Code Light")
        self.label_7.setFont(font)
        self.label_7.setAlignment(Qt.AlignCenter)

        self.verticalLayout_2.addWidget(self.label_7)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.fitCBB = QComboBox(Form)
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.addItem("")
        self.fitCBB.setObjectName(u"fitCBB")

        self.horizontalLayout_4.addWidget(self.fitCBB)


        self.verticalLayout_2.addLayout(self.horizontalLayout_4)

        self.horizontalSpacer_4 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_4)

        self.label_3 = QLabel(Form)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setFont(font)
        self.label_3.setAlignment(Qt.AlignCenter)

        self.verticalLayout_2.addWidget(self.label_3)

        self.skeletonLE = QLineEdit(Form)
        self.skeletonLE.setObjectName(u"skeletonLE")
        self.skeletonLE.setDragEnabled(True)

        self.verticalLayout_2.addWidget(self.skeletonLE)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.skeletonAddPB = QPushButton(Form)
        self.skeletonAddPB.setObjectName(u"skeletonAddPB")

        self.horizontalLayout.addWidget(self.skeletonAddPB)

        self.skeletonDeletePB = QPushButton(Form)
        self.skeletonDeletePB.setObjectName(u"skeletonDeletePB")

        self.horizontalLayout.addWidget(self.skeletonDeletePB)


        self.verticalLayout_2.addLayout(self.horizontalLayout)

        self.horizontalSpacer_3 = QSpacerItem(675, 17, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_2.addItem(self.horizontalSpacer_3)

        self.label_2 = QLabel(Form)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setFont(font)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout_2.addWidget(self.label_2)

        self.tagsLoadPB = QPushButton(Form)
        self.tagsLoadPB.setObjectName(u"tagsLoadPB")

        self.verticalLayout_2.addWidget(self.tagsLoadPB)

        self.tagsTW = QTreeWidget(Form)
        self.tagsTW.setObjectName(u"tagsTW")
        self.tagsTW.setDragEnabled(True)
        self.tagsTW.setDragDropMode(QAbstractItemView.InternalMove)
        self.tagsTW.setDefaultDropAction(Qt.CopyAction)
        self.tagsTW.setSelectionMode(QAbstractItemView.SingleSelection)

        self.verticalLayout_2.addWidget(self.tagsTW)


        self.gridLayout.addLayout(self.verticalLayout_2, 1, 0, 1, 1)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer)

        self.label_8 = QLabel(Form)
        self.label_8.setObjectName(u"label_8")
        self.label_8.setFont(font)
        self.label_8.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_8)

        self.buildRB = QRadioButton(Form)
        self.buildRB.setObjectName(u"buildRB")
        self.buildRB.setChecked(True)

        self.verticalLayout.addWidget(self.buildRB)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.buildFitPB = QPushButton(Form)
        self.buildFitPB.setObjectName(u"buildFitPB")

        self.horizontalLayout_3.addWidget(self.buildFitPB)

        self.buildCombinePB = QPushButton(Form)
        self.buildCombinePB.setObjectName(u"buildCombinePB")

        self.horizontalLayout_3.addWidget(self.buildCombinePB)


        self.verticalLayout.addLayout(self.horizontalLayout_3)


        self.gridLayout.addLayout(self.verticalLayout, 3, 0, 1, 1)

        self.label_4 = QLabel(Form)
        self.label_4.setObjectName(u"label_4")
        font1 = QFont()
        font1.setFamily(u"Cascadia Code SemiBold")
        font1.setPointSize(14)
        font1.setBold(True)
        font1.setWeight(75)
        self.label_4.setFont(font1)
        self.label_4.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label_4, 0, 0, 1, 1)

        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.horizontalSpacer_5 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_3.addItem(self.horizontalSpacer_5)

        self.label_6 = QLabel(Form)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setFont(font)
        self.label_6.setAlignment(Qt.AlignCenter)

        self.verticalLayout_3.addWidget(self.label_6)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.twistLE = QLineEdit(Form)
        self.twistLE.setObjectName(u"twistLE")
        self.twistLE.setDragEnabled(True)

        self.horizontalLayout_2.addWidget(self.twistLE)

        self.twistSPB = QSpinBox(Form)
        self.twistSPB.setObjectName(u"twistSPB")

        self.horizontalLayout_2.addWidget(self.twistSPB)


        self.verticalLayout_3.addLayout(self.horizontalLayout_2)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.twistAddPB = QPushButton(Form)
        self.twistAddPB.setObjectName(u"twistAddPB")

        self.horizontalLayout_5.addWidget(self.twistAddPB)

        self.twistDeletePB = QPushButton(Form)
        self.twistDeletePB.setObjectName(u"twistDeletePB")

        self.horizontalLayout_5.addWidget(self.twistDeletePB)


        self.verticalLayout_3.addLayout(self.horizontalLayout_5)


        self.gridLayout.addLayout(self.verticalLayout_3, 2, 0, 1, 1)

        self.verticalLayout_4 = QVBoxLayout()
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.horizontalSpacer_6 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout_4.addItem(self.horizontalSpacer_6)

        self.label = QLabel(Form)
        self.label.setObjectName(u"label")
        self.label.setFont(font)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout_4.addWidget(self.label)

        self.horizontalLayout_6 = QHBoxLayout()
        self.horizontalLayout_6.setObjectName(u"horizontalLayout_6")
        self.followItemLE = QLineEdit(Form)
        self.followItemLE.setObjectName(u"followItemLE")
        self.followItemLE.setDragEnabled(True)

        self.horizontalLayout_6.addWidget(self.followItemLE)

        self.followTargetLE = QLineEdit(Form)
        self.followTargetLE.setObjectName(u"followTargetLE")
        self.followTargetLE.setDragEnabled(True)
        self.followTargetLE.setReadOnly(False)

        self.horizontalLayout_6.addWidget(self.followTargetLE)


        self.verticalLayout_4.addLayout(self.horizontalLayout_6)

        self.horizontalLayout_7 = QHBoxLayout()
        self.horizontalLayout_7.setObjectName(u"horizontalLayout_7")
        self.label_9 = QLabel(Form)
        self.label_9.setObjectName(u"label_9")

        self.horizontalLayout_7.addWidget(self.label_9)

        self.followAttrLE = QLineEdit(Form)
        self.followAttrLE.setObjectName(u"followAttrLE")

        self.horizontalLayout_7.addWidget(self.followAttrLE)


        self.verticalLayout_4.addLayout(self.horizontalLayout_7)

        self.followPB = QPushButton(Form)
        self.followPB.setObjectName(u"followPB")

        self.verticalLayout_4.addWidget(self.followPB)


        self.gridLayout.addLayout(self.verticalLayout_4, 4, 0, 1, 1)

        self.horizontalLayout_9 = QHBoxLayout()
        self.horizontalLayout_9.setObjectName(u"horizontalLayout_9")
        self.label_11 = QLabel(Form)
        self.label_11.setObjectName(u"label_11")
        self.label_11.setAlignment(Qt.AlignRight|Qt.AlignTrailing|Qt.AlignVCenter)

        self.horizontalLayout_9.addWidget(self.label_11)

        self.label_12 = QLabel(Form)
        self.label_12.setObjectName(u"label_12")

        self.horizontalLayout_9.addWidget(self.label_12)


        self.gridLayout.addLayout(self.horizontalLayout_9, 6, 0, 1, 1)

        self.label_4.raise_()

        self.retranslateUi(Form)
        self.skeletonAddPB.clicked.connect(self.skeletonLE.clear)
        self.skeletonDeletePB.clicked.connect(self.skeletonLE.clear)
        self.twistAddPB.clicked.connect(self.twistLE.clear)

        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_5.setText(QCoreApplication.translate("Form", u"AUTHOR : ", None))
        self.label_10.setText(QCoreApplication.translate("Form", u"smi_th", None))
        self.label_7.setText(QCoreApplication.translate("Form", u"Fit And Parts Register", None))
        self.fitCBB.setItemText(0, QCoreApplication.translate("Form", u"Metahuman", None))
        self.fitCBB.setItemText(1, QCoreApplication.translate("Form", u"Neck", None))
        self.fitCBB.setItemText(2, QCoreApplication.translate("Form", u"Spine", None))
        self.fitCBB.setItemText(3, QCoreApplication.translate("Form", u"Clavicle", None))
        self.fitCBB.setItemText(4, QCoreApplication.translate("Form", u"Arm", None))
        self.fitCBB.setItemText(5, QCoreApplication.translate("Form", u"Finger", None))
        self.fitCBB.setItemText(6, QCoreApplication.translate("Form", u"Leg", None))
        self.fitCBB.setItemText(7, QCoreApplication.translate("Form", u"Foot", None))
        self.fitCBB.setItemText(8, QCoreApplication.translate("Form", u"QArm", None))
        self.fitCBB.setItemText(9, QCoreApplication.translate("Form", u"QLeg", None))
        self.fitCBB.setItemText(10, QCoreApplication.translate("Form", u"Tail", None))

        self.label_3.setText(QCoreApplication.translate("Form", u"Sekeleton List Register", None))
        self.skeletonLE.setText(QCoreApplication.translate("Form", u"Please Drag and Drap..", None))
        self.skeletonAddPB.setText(QCoreApplication.translate("Form", u"Add", None))
        self.skeletonDeletePB.setText(QCoreApplication.translate("Form", u"Delete", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Tags", None))
        self.tagsLoadPB.setText(QCoreApplication.translate("Form", u"Tags Load", None))
        ___qtreewidgetitem = self.tagsTW.headerItem()
        ___qtreewidgetitem.setText(0, QCoreApplication.translate("Form", u"root", None));
        self.label_8.setText(QCoreApplication.translate("Form", u"Build Area", None))
        self.buildRB.setText(QCoreApplication.translate("Form", u"Keep All", None))
        self.buildFitPB.setText(QCoreApplication.translate("Form", u"ToggleFit", None))
        self.buildCombinePB.setText(QCoreApplication.translate("Form", u"Combine", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"Custom Rigging Tool", None))
        self.label_6.setText(QCoreApplication.translate("Form", u"Twist / Bendy Register", None))
        self.twistLE.setText(QCoreApplication.translate("Form", u"Please Drag and Drap..", None))
        self.twistAddPB.setText(QCoreApplication.translate("Form", u"Add", None))
        self.twistDeletePB.setText(QCoreApplication.translate("Form", u"Delete", None))
        self.label.setText(QCoreApplication.translate("Form", u"Follow", None))
        self.followItemLE.setText(QCoreApplication.translate("Form", u"Drag and Drap Item..", None))
        self.followTargetLE.setText(QCoreApplication.translate("Form", u"Drag and Drap Target..", None))
        self.label_9.setText(QCoreApplication.translate("Form", u"Attributes Name : ", None))
        self.followAttrLE.setText(QCoreApplication.translate("Form", u"Object:Main:World", None))
        self.followPB.setText(QCoreApplication.translate("Form", u"Setup", None))
        self.label_11.setText(QCoreApplication.translate("Form", u"UPDATE : ", None))
        self.label_12.setText(QCoreApplication.translate("Form", u"0000.00.00", None))
    # retranslateUi

