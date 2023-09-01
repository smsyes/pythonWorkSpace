# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'CNTManager2.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_CNTManager(object):
    def setupUi(self, CNTManager):
        if not CNTManager.objectName():
            CNTManager.setObjectName(u"CNTManager")
        CNTManager.resize(430, 581)
        self.gridLayout_3 = QGridLayout(CNTManager)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.gridLayout = QGridLayout()
        self.gridLayout.setObjectName(u"gridLayout")
        self.AlistWidget = QListWidget(CNTManager)
        self.AlistWidget.setObjectName(u"AlistWidget")
        self.AlistWidget.setDragEnabled(True)
        self.AlistWidget.setDragDropMode(QAbstractItemView.InternalMove)
        self.AlistWidget.setSelectionMode(QAbstractItemView.ExtendedSelection)

        self.gridLayout.addWidget(self.AlistWidget, 0, 0, 1, 2)

        self.AAddPB = QPushButton(CNTManager)
        self.AAddPB.setObjectName(u"AAddPB")

        self.gridLayout.addWidget(self.AAddPB, 1, 0, 1, 1)

        self.ARemovePB = QPushButton(CNTManager)
        self.ARemovePB.setObjectName(u"ARemovePB")

        self.gridLayout.addWidget(self.ARemovePB, 1, 1, 1, 1)


        self.horizontalLayout_5.addLayout(self.gridLayout)

        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_3.addItem(self.verticalSpacer)

        self.SortPB = QPushButton(CNTManager)
        self.SortPB.setObjectName(u"SortPB")

        self.verticalLayout_3.addWidget(self.SortPB)

        self.ChangePB = QPushButton(CNTManager)
        self.ChangePB.setObjectName(u"ChangePB")

        self.verticalLayout_3.addWidget(self.ChangePB)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.OneToNRB = QRadioButton(CNTManager)
        self.OneToNRB.setObjectName(u"OneToNRB")
        self.OneToNRB.setChecked(False)

        self.verticalLayout.addWidget(self.OneToNRB)

        self.NToNRB = QRadioButton(CNTManager)
        self.NToNRB.setObjectName(u"NToNRB")
        self.NToNRB.setChecked(True)

        self.verticalLayout.addWidget(self.NToNRB)


        self.verticalLayout_3.addLayout(self.verticalLayout)

        self.verticalSpacer_2 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_3.addItem(self.verticalSpacer_2)


        self.horizontalLayout_5.addLayout(self.verticalLayout_3)

        self.gridLayout_2 = QGridLayout()
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.BlistWidget = QListWidget(CNTManager)
        self.BlistWidget.setObjectName(u"BlistWidget")
        self.BlistWidget.setDragEnabled(True)
        self.BlistWidget.setDragDropMode(QAbstractItemView.InternalMove)
        self.BlistWidget.setSelectionMode(QAbstractItemView.ExtendedSelection)

        self.gridLayout_2.addWidget(self.BlistWidget, 0, 0, 1, 2)

        self.BAddPB = QPushButton(CNTManager)
        self.BAddPB.setObjectName(u"BAddPB")

        self.gridLayout_2.addWidget(self.BAddPB, 1, 0, 1, 1)

        self.BRemovePB = QPushButton(CNTManager)
        self.BRemovePB.setObjectName(u"BRemovePB")

        self.gridLayout_2.addWidget(self.BRemovePB, 1, 1, 1, 1)


        self.horizontalLayout_5.addLayout(self.gridLayout_2)


        self.gridLayout_3.addLayout(self.horizontalLayout_5, 0, 0, 1, 1)

        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.OutLE = QLineEdit(CNTManager)
        self.OutLE.setObjectName(u"OutLE")

        self.horizontalLayout_2.addWidget(self.OutLE)

        self.ConnectionPB = QPushButton(CNTManager)
        self.ConnectionPB.setObjectName(u"ConnectionPB")

        self.horizontalLayout_2.addWidget(self.ConnectionPB)

        self.InLE = QLineEdit(CNTManager)
        self.InLE.setObjectName(u"InLE")

        self.horizontalLayout_2.addWidget(self.InLE)


        self.verticalLayout_2.addLayout(self.horizontalLayout_2)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.GetSetPB = QPushButton(CNTManager)
        self.GetSetPB.setObjectName(u"GetSetPB")

        self.horizontalLayout_3.addWidget(self.GetSetPB)

        self.PPPB = QPushButton(CNTManager)
        self.PPPB.setObjectName(u"PPPB")

        self.horizontalLayout_3.addWidget(self.PPPB)

        self.SetDrivenPB = QPushButton(CNTManager)
        self.SetDrivenPB.setObjectName(u"SetDrivenPB")

        self.horizontalLayout_3.addWidget(self.SetDrivenPB)


        self.verticalLayout_2.addLayout(self.horizontalLayout_3)

        self.line = QFrame(CNTManager)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_2.addWidget(self.line)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.AllMRB = QRadioButton(CNTManager)
        self.AllMRB.setObjectName(u"AllMRB")
        self.AllMRB.setChecked(True)

        self.horizontalLayout.addWidget(self.AllMRB)

        self.TransMRB = QRadioButton(CNTManager)
        self.TransMRB.setObjectName(u"TransMRB")

        self.horizontalLayout.addWidget(self.TransMRB)

        self.RotMRB = QRadioButton(CNTManager)
        self.RotMRB.setObjectName(u"RotMRB")

        self.horizontalLayout.addWidget(self.RotMRB)

        self.ScaleMRB = QRadioButton(CNTManager)
        self.ScaleMRB.setObjectName(u"ScaleMRB")

        self.horizontalLayout.addWidget(self.ScaleMRB)


        self.verticalLayout_2.addLayout(self.horizontalLayout)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.MatchPB = QPushButton(CNTManager)
        self.MatchPB.setObjectName(u"MatchPB")

        self.horizontalLayout_4.addWidget(self.MatchPB)

        self.MConPB = QPushButton(CNTManager)
        self.MConPB.setObjectName(u"MConPB")

        self.horizontalLayout_4.addWidget(self.MConPB)

        self.ConstPB = QPushButton(CNTManager)
        self.ConstPB.setObjectName(u"ConstPB")

        self.horizontalLayout_4.addWidget(self.ConstPB)


        self.verticalLayout_2.addLayout(self.horizontalLayout_4)


        self.gridLayout_3.addLayout(self.verticalLayout_2, 1, 0, 1, 1)

        self.verticalLayout_4 = QVBoxLayout()
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.AUTHORLB = QLabel(CNTManager)
        self.AUTHORLB.setObjectName(u"AUTHORLB")
        self.AUTHORLB.setAlignment(Qt.AlignCenter)

        self.verticalLayout_4.addWidget(self.AUTHORLB)

        self.UPDATALB = QLabel(CNTManager)
        self.UPDATALB.setObjectName(u"UPDATALB")
        self.UPDATALB.setAlignment(Qt.AlignCenter)

        self.verticalLayout_4.addWidget(self.UPDATALB)


        self.gridLayout_3.addLayout(self.verticalLayout_4, 2, 0, 1, 1)


        self.retranslateUi(CNTManager)

        QMetaObject.connectSlotsByName(CNTManager)
    # setupUi

    def retranslateUi(self, CNTManager):
        CNTManager.setWindowTitle(QCoreApplication.translate("CNTManager", u"CNTManager", None))
        self.AAddPB.setText(QCoreApplication.translate("CNTManager", u"Add", None))
        self.ARemovePB.setText(QCoreApplication.translate("CNTManager", u"Remove", None))
        self.SortPB.setText(QCoreApplication.translate("CNTManager", u"Sort", None))
        self.ChangePB.setText(QCoreApplication.translate("CNTManager", u"Change", None))
        self.OneToNRB.setText(QCoreApplication.translate("CNTManager", u"One To N", None))
        self.NToNRB.setText(QCoreApplication.translate("CNTManager", u"N To N", None))
        self.BAddPB.setText(QCoreApplication.translate("CNTManager", u"Add", None))
        self.BRemovePB.setText(QCoreApplication.translate("CNTManager", u"Remove", None))
        self.OutLE.setText(QCoreApplication.translate("CNTManager", u"OutPut..", None))
        self.ConnectionPB.setText(QCoreApplication.translate("CNTManager", u">>", None))
        self.InLE.setText(QCoreApplication.translate("CNTManager", u"InPut..", None))
        self.GetSetPB.setText(QCoreApplication.translate("CNTManager", u"Get Set", None))
        self.PPPB.setText(QCoreApplication.translate("CNTManager", u"PParent", None))
        self.SetDrivenPB.setText(QCoreApplication.translate("CNTManager", u"SetDriven", None))
        self.AllMRB.setText(QCoreApplication.translate("CNTManager", u"All", None))
        self.TransMRB.setText(QCoreApplication.translate("CNTManager", u"Trans", None))
        self.RotMRB.setText(QCoreApplication.translate("CNTManager", u"Rot", None))
        self.ScaleMRB.setText(QCoreApplication.translate("CNTManager", u"Scale", None))
        self.MatchPB.setText(QCoreApplication.translate("CNTManager", u"Match", None))
        self.MConPB.setText(QCoreApplication.translate("CNTManager", u"MCon", None))
        self.ConstPB.setText(QCoreApplication.translate("CNTManager", u"Const", None))
        self.AUTHORLB.setText(QCoreApplication.translate("CNTManager", u"AUTHOR : MinSung", None))
        self.UPDATALB.setText(QCoreApplication.translate("CNTManager", u"UPDATE : 20220114", None))
    # retranslateUi

