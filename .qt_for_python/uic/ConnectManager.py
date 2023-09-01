# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'ConnectManager.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        if not MainWindow.objectName():
            MainWindow.setObjectName(u"MainWindow")
        MainWindow.resize(477, 926)
        self.centralwidget = QWidget(MainWindow)
        self.centralwidget.setObjectName(u"centralwidget")
        self.gridLayout_5 = QGridLayout(self.centralwidget)
        self.gridLayout_5.setObjectName(u"gridLayout_5")
        self.CNTMtabWidget = QTabWidget(self.centralwidget)
        self.CNTMtabWidget.setObjectName(u"CNTMtabWidget")
        self.tab = QWidget()
        self.tab.setObjectName(u"tab")
        self.gridLayout_6 = QGridLayout(self.tab)
        self.gridLayout_6.setObjectName(u"gridLayout_6")
        self.ConnectManager_groupBox = QGroupBox(self.tab)
        self.ConnectManager_groupBox.setObjectName(u"ConnectManager_groupBox")
        font = QFont()
        font.setFamily(u"Arial")
        self.ConnectManager_groupBox.setFont(font)
        self.gridLayout = QGridLayout(self.ConnectManager_groupBox)
        self.gridLayout.setObjectName(u"gridLayout")
        self.mainverticalLayout = QVBoxLayout()
        self.mainverticalLayout.setObjectName(u"mainverticalLayout")
        self.listhorizontalLayout = QHBoxLayout()
        self.listhorizontalLayout.setObjectName(u"listhorizontalLayout")
        self.outlistverticalLayout = QVBoxLayout()
        self.outlistverticalLayout.setObjectName(u"outlistverticalLayout")
        self.AlistWidget = QListWidget(self.ConnectManager_groupBox)
        self.AlistWidget.setObjectName(u"AlistWidget")
        self.AlistWidget.setDragEnabled(True)
        self.AlistWidget.setDragDropMode(QAbstractItemView.InternalMove)
        self.AlistWidget.setAlternatingRowColors(True)
        self.AlistWidget.setSelectionMode(QAbstractItemView.ExtendedSelection)
        self.AlistWidget.setSelectionBehavior(QAbstractItemView.SelectItems)

        self.outlistverticalLayout.addWidget(self.AlistWidget)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.AAddpushButton = QPushButton(self.ConnectManager_groupBox)
        self.AAddpushButton.setObjectName(u"AAddpushButton")
        font1 = QFont()
        font1.setFamily(u"\uad74\ub9bc")
        self.AAddpushButton.setFont(font1)

        self.horizontalLayout.addWidget(self.AAddpushButton)

        self.ARemovepushButton = QPushButton(self.ConnectManager_groupBox)
        self.ARemovepushButton.setObjectName(u"ARemovepushButton")
        self.ARemovepushButton.setFont(font1)

        self.horizontalLayout.addWidget(self.ARemovepushButton)


        self.outlistverticalLayout.addLayout(self.horizontalLayout)


        self.listhorizontalLayout.addLayout(self.outlistverticalLayout)

        self.sortButtonverticalLayout = QVBoxLayout()
        self.sortButtonverticalLayout.setObjectName(u"sortButtonverticalLayout")
        self.sortpushButton = QPushButton(self.ConnectManager_groupBox)
        self.sortpushButton.setObjectName(u"sortpushButton")
        self.sortpushButton.setFont(font)
        self.sortpushButton.setFlat(True)

        self.sortButtonverticalLayout.addWidget(self.sortpushButton)

        self.reversepushButton = QPushButton(self.ConnectManager_groupBox)
        self.reversepushButton.setObjectName(u"reversepushButton")
        font2 = QFont()
        font2.setFamily(u"Arial")
        font2.setKerning(True)
        self.reversepushButton.setFont(font2)
        self.reversepushButton.setFlat(True)

        self.sortButtonverticalLayout.addWidget(self.reversepushButton)

        self.pparentpushButton = QPushButton(self.ConnectManager_groupBox)
        self.pparentpushButton.setObjectName(u"pparentpushButton")
        self.pparentpushButton.setFont(font1)
        self.pparentpushButton.setFlat(True)

        self.sortButtonverticalLayout.addWidget(self.pparentpushButton)


        self.listhorizontalLayout.addLayout(self.sortButtonverticalLayout)

        self.inlistverticalLayout = QVBoxLayout()
        self.inlistverticalLayout.setObjectName(u"inlistverticalLayout")
        self.BlistWidget = QListWidget(self.ConnectManager_groupBox)
        self.BlistWidget.setObjectName(u"BlistWidget")
        self.BlistWidget.setDragEnabled(True)
        self.BlistWidget.setDragDropMode(QAbstractItemView.InternalMove)
        self.BlistWidget.setAlternatingRowColors(True)
        self.BlistWidget.setSelectionMode(QAbstractItemView.ExtendedSelection)
        self.BlistWidget.setSelectionBehavior(QAbstractItemView.SelectItems)

        self.inlistverticalLayout.addWidget(self.BlistWidget)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.BAddrpushButton = QPushButton(self.ConnectManager_groupBox)
        self.BAddrpushButton.setObjectName(u"BAddrpushButton")
        self.BAddrpushButton.setFont(font1)

        self.horizontalLayout_2.addWidget(self.BAddrpushButton)

        self.BRemovepushButton = QPushButton(self.ConnectManager_groupBox)
        self.BRemovepushButton.setObjectName(u"BRemovepushButton")
        self.BRemovepushButton.setFont(font1)

        self.horizontalLayout_2.addWidget(self.BRemovepushButton)


        self.inlistverticalLayout.addLayout(self.horizontalLayout_2)


        self.listhorizontalLayout.addLayout(self.inlistverticalLayout)


        self.mainverticalLayout.addLayout(self.listhorizontalLayout)

        self.connectTypegroupBox = QGroupBox(self.ConnectManager_groupBox)
        self.connectTypegroupBox.setObjectName(u"connectTypegroupBox")
        self.connectTypegroupBox.setFlat(False)
        self.connectTypegroupBox.setCheckable(False)
        self.gridLayout_2 = QGridLayout(self.connectTypegroupBox)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.gridLayout_2.setHorizontalSpacing(6)
        self.gridLayout_2.setContentsMargins(2, 2, 2, 2)
        self.connectTypehorizontalLayout = QHBoxLayout()
        self.connectTypehorizontalLayout.setObjectName(u"connectTypehorizontalLayout")
        self.OneToNradioButton = QRadioButton(self.connectTypegroupBox)
        self.OneToNradioButton.setObjectName(u"OneToNradioButton")
        self.OneToNradioButton.setFont(font1)

        self.connectTypehorizontalLayout.addWidget(self.OneToNradioButton)

        self.NToNradioButton = QRadioButton(self.connectTypegroupBox)
        self.NToNradioButton.setObjectName(u"NToNradioButton")
        self.NToNradioButton.setFont(font1)
        self.NToNradioButton.setChecked(True)

        self.connectTypehorizontalLayout.addWidget(self.NToNradioButton)


        self.gridLayout_2.addLayout(self.connectTypehorizontalLayout, 0, 0, 1, 1)


        self.mainverticalLayout.addWidget(self.connectTypegroupBox)

        self.attrrhorizontalLayout = QHBoxLayout()
        self.attrrhorizontalLayout.setSpacing(6)
        self.attrrhorizontalLayout.setObjectName(u"attrrhorizontalLayout")
        self.outAttrlabel = QLabel(self.ConnectManager_groupBox)
        self.outAttrlabel.setObjectName(u"outAttrlabel")
        self.outAttrlabel.setFont(font1)

        self.attrrhorizontalLayout.addWidget(self.outAttrlabel)

        self.OutAttrtextEdit = QTextEdit(self.ConnectManager_groupBox)
        self.OutAttrtextEdit.setObjectName(u"OutAttrtextEdit")
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Maximum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.OutAttrtextEdit.sizePolicy().hasHeightForWidth())
        self.OutAttrtextEdit.setSizePolicy(sizePolicy)
        self.OutAttrtextEdit.setMaximumSize(QSize(16777215, 25))

        self.attrrhorizontalLayout.addWidget(self.OutAttrtextEdit)

        self.inAttrlabel = QLabel(self.ConnectManager_groupBox)
        self.inAttrlabel.setObjectName(u"inAttrlabel")
        self.inAttrlabel.setFont(font1)

        self.attrrhorizontalLayout.addWidget(self.inAttrlabel)

        self.InAttrtextEdit = QTextEdit(self.ConnectManager_groupBox)
        self.InAttrtextEdit.setObjectName(u"InAttrtextEdit")
        sizePolicy.setHeightForWidth(self.InAttrtextEdit.sizePolicy().hasHeightForWidth())
        self.InAttrtextEdit.setSizePolicy(sizePolicy)
        self.InAttrtextEdit.setMaximumSize(QSize(16777215, 25))

        self.attrrhorizontalLayout.addWidget(self.InAttrtextEdit)

        self.connectpushButton = QPushButton(self.ConnectManager_groupBox)
        self.connectpushButton.setObjectName(u"connectpushButton")
        self.connectpushButton.setFont(font1)

        self.attrrhorizontalLayout.addWidget(self.connectpushButton)

        self.SetAttrpushButton = QPushButton(self.ConnectManager_groupBox)
        self.SetAttrpushButton.setObjectName(u"SetAttrpushButton")
        self.SetAttrpushButton.setFont(font1)

        self.attrrhorizontalLayout.addWidget(self.SetAttrpushButton)


        self.mainverticalLayout.addLayout(self.attrrhorizontalLayout)

        self.line_3 = QFrame(self.ConnectManager_groupBox)
        self.line_3.setObjectName(u"line_3")
        self.line_3.setFrameShape(QFrame.HLine)
        self.line_3.setFrameShadow(QFrame.Sunken)

        self.mainverticalLayout.addWidget(self.line_3)

        self.constrainthorizontalLayout = QHBoxLayout()
        self.constrainthorizontalLayout.setObjectName(u"constrainthorizontalLayout")
        self.constTypegroupBox = QGroupBox(self.ConnectManager_groupBox)
        self.constTypegroupBox.setObjectName(u"constTypegroupBox")
        self.gridLayout_3 = QGridLayout(self.constTypegroupBox)
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.gridLayout_3.setContentsMargins(2, 2, 2, 2)
        self.constTypehorizontalLayout = QHBoxLayout()
        self.constTypehorizontalLayout.setObjectName(u"constTypehorizontalLayout")
        self.parentradioButton = QRadioButton(self.constTypegroupBox)
        self.parentradioButton.setObjectName(u"parentradioButton")
        self.parentradioButton.setFont(font1)
        self.parentradioButton.setChecked(True)

        self.constTypehorizontalLayout.addWidget(self.parentradioButton)

        self.pointradioButton = QRadioButton(self.constTypegroupBox)
        self.pointradioButton.setObjectName(u"pointradioButton")
        self.pointradioButton.setFont(font1)

        self.constTypehorizontalLayout.addWidget(self.pointradioButton)

        self.orientradioButton = QRadioButton(self.constTypegroupBox)
        self.orientradioButton.setObjectName(u"orientradioButton")
        self.orientradioButton.setFont(font1)

        self.constTypehorizontalLayout.addWidget(self.orientradioButton)

        self.scaleradioButton = QRadioButton(self.constTypegroupBox)
        self.scaleradioButton.setObjectName(u"scaleradioButton")
        self.scaleradioButton.setFont(font1)

        self.constTypehorizontalLayout.addWidget(self.scaleradioButton)


        self.gridLayout_3.addLayout(self.constTypehorizontalLayout, 0, 0, 1, 1)


        self.constrainthorizontalLayout.addWidget(self.constTypegroupBox)

        self.maintaincheckBox = QCheckBox(self.ConnectManager_groupBox)
        self.maintaincheckBox.setObjectName(u"maintaincheckBox")
        self.maintaincheckBox.setFont(font1)
        self.maintaincheckBox.setChecked(True)

        self.constrainthorizontalLayout.addWidget(self.maintaincheckBox)

        self.constraintpushButton = QPushButton(self.ConnectManager_groupBox)
        self.constraintpushButton.setObjectName(u"constraintpushButton")
        self.constraintpushButton.setFont(font1)

        self.constrainthorizontalLayout.addWidget(self.constraintpushButton)


        self.mainverticalLayout.addLayout(self.constrainthorizontalLayout)

        self.line_4 = QFrame(self.ConnectManager_groupBox)
        self.line_4.setObjectName(u"line_4")
        self.line_4.setFrameShape(QFrame.HLine)
        self.line_4.setFrameShadow(QFrame.Sunken)

        self.mainverticalLayout.addWidget(self.line_4)

        self.mirrorhorizontalLayout = QHBoxLayout()
        self.mirrorhorizontalLayout.setObjectName(u"mirrorhorizontalLayout")
        self.mirrorTypehorizontalLayout = QHBoxLayout()
        self.mirrorTypehorizontalLayout.setObjectName(u"mirrorTypehorizontalLayout")
        self.mirrorReversgroupBox = QGroupBox(self.ConnectManager_groupBox)
        self.mirrorReversgroupBox.setObjectName(u"mirrorReversgroupBox")
        self.gridLayout_4 = QGridLayout(self.mirrorReversgroupBox)
        self.gridLayout_4.setObjectName(u"gridLayout_4")
        self.gridLayout_4.setContentsMargins(2, 2, 2, 2)
        self.mirrorRevershorizontalLayout = QHBoxLayout()
        self.mirrorRevershorizontalLayout.setObjectName(u"mirrorRevershorizontalLayout")
        self.axisYZradioButton = QRadioButton(self.mirrorReversgroupBox)
        self.axisYZradioButton.setObjectName(u"axisYZradioButton")
        self.axisYZradioButton.setFont(font1)
        self.axisYZradioButton.setChecked(True)

        self.mirrorRevershorizontalLayout.addWidget(self.axisYZradioButton)

        self.axisXYradioButton = QRadioButton(self.mirrorReversgroupBox)
        self.axisXYradioButton.setObjectName(u"axisXYradioButton")
        self.axisXYradioButton.setFont(font1)

        self.mirrorRevershorizontalLayout.addWidget(self.axisXYradioButton)

        self.axisZXradioButton = QRadioButton(self.mirrorReversgroupBox)
        self.axisZXradioButton.setObjectName(u"axisZXradioButton")
        self.axisZXradioButton.setFont(font1)

        self.mirrorRevershorizontalLayout.addWidget(self.axisZXradioButton)


        self.gridLayout_4.addLayout(self.mirrorRevershorizontalLayout, 0, 0, 1, 1)


        self.mirrorTypehorizontalLayout.addWidget(self.mirrorReversgroupBox)


        self.mirrorhorizontalLayout.addLayout(self.mirrorTypehorizontalLayout)

        self.mirrorpushButton = QPushButton(self.ConnectManager_groupBox)
        self.mirrorpushButton.setObjectName(u"mirrorpushButton")
        self.mirrorpushButton.setFont(font1)

        self.mirrorhorizontalLayout.addWidget(self.mirrorpushButton)


        self.mainverticalLayout.addLayout(self.mirrorhorizontalLayout)

        self.line_5 = QFrame(self.ConnectManager_groupBox)
        self.line_5.setObjectName(u"line_5")
        self.line_5.setFrameShape(QFrame.HLine)
        self.line_5.setFrameShadow(QFrame.Sunken)

        self.mainverticalLayout.addWidget(self.line_5)

        self.wrapTranshorizontalLayout = QHBoxLayout()
        self.wrapTranshorizontalLayout.setObjectName(u"wrapTranshorizontalLayout")
        self.wrappushButton = QPushButton(self.ConnectManager_groupBox)
        self.wrappushButton.setObjectName(u"wrappushButton")
        self.wrappushButton.setFont(font1)

        self.wrapTranshorizontalLayout.addWidget(self.wrappushButton)

        self.transformrpushButton = QPushButton(self.ConnectManager_groupBox)
        self.transformrpushButton.setObjectName(u"transformrpushButton")
        self.transformrpushButton.setFont(font1)

        self.wrapTranshorizontalLayout.addWidget(self.transformrpushButton)

        self.SkinBindpushButton = QPushButton(self.ConnectManager_groupBox)
        self.SkinBindpushButton.setObjectName(u"SkinBindpushButton")
        self.SkinBindpushButton.setFont(font1)

        self.wrapTranshorizontalLayout.addWidget(self.SkinBindpushButton)


        self.mainverticalLayout.addLayout(self.wrapTranshorizontalLayout)


        self.gridLayout.addLayout(self.mainverticalLayout, 0, 0, 1, 1)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer, 1, 0, 1, 1)

        self.label = QLabel(self.ConnectManager_groupBox)
        self.label.setObjectName(u"label")
        self.label.setMaximumSize(QSize(16777215, 16777215))
        font3 = QFont()
        font3.setFamily(u"Arial")
        font3.setPointSize(8)
        self.label.setFont(font3)
        self.label.setFrameShape(QFrame.NoFrame)
        self.label.setFrameShadow(QFrame.Plain)
        self.label.setLineWidth(2)
        self.label.setTextFormat(Qt.PlainText)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setWordWrap(True)

        self.gridLayout.addWidget(self.label, 2, 0, 1, 1)

        self.label_2 = QLabel(self.ConnectManager_groupBox)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setFont(font3)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label_2, 3, 0, 1, 1)


        self.gridLayout_6.addWidget(self.ConnectManager_groupBox, 0, 0, 1, 1)

        self.CNTMtabWidget.addTab(self.tab, "")
        self.tab_2 = QWidget()
        self.tab_2.setObjectName(u"tab_2")
        self.verticalLayoutWidget = QWidget(self.tab_2)
        self.verticalLayoutWidget.setObjectName(u"verticalLayoutWidget")
        self.verticalLayoutWidget.setGeometry(QRect(80, 50, 271, 121))
        self.gridLayout_7 = QGridLayout(self.verticalLayoutWidget)
        self.gridLayout_7.setObjectName(u"gridLayout_7")
        self.gridLayout_7.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.CurveAtJointpushButton = QPushButton(self.verticalLayoutWidget)
        self.CurveAtJointpushButton.setObjectName(u"CurveAtJointpushButton")

        self.horizontalLayout_3.addWidget(self.CurveAtJointpushButton)

        self.pushButton = QPushButton(self.verticalLayoutWidget)
        self.pushButton.setObjectName(u"pushButton")

        self.horizontalLayout_3.addWidget(self.pushButton)


        self.gridLayout_7.addLayout(self.horizontalLayout_3, 3, 0, 1, 1)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.radioButton_4 = QRadioButton(self.verticalLayoutWidget)
        self.radioButton_4.setObjectName(u"radioButton_4")

        self.horizontalLayout_4.addWidget(self.radioButton_4)

        self.radioButton_5 = QRadioButton(self.verticalLayoutWidget)
        self.radioButton_5.setObjectName(u"radioButton_5")

        self.horizontalLayout_4.addWidget(self.radioButton_5)


        self.gridLayout_7.addLayout(self.horizontalLayout_4, 2, 0, 1, 1)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.radioButton_2 = QRadioButton(self.verticalLayoutWidget)
        self.radioButton_2.setObjectName(u"radioButton_2")

        self.horizontalLayout_5.addWidget(self.radioButton_2)

        self.radioButton = QRadioButton(self.verticalLayoutWidget)
        self.radioButton.setObjectName(u"radioButton")

        self.horizontalLayout_5.addWidget(self.radioButton)

        self.radioButton_3 = QRadioButton(self.verticalLayoutWidget)
        self.radioButton_3.setObjectName(u"radioButton_3")

        self.horizontalLayout_5.addWidget(self.radioButton_3)


        self.gridLayout_7.addLayout(self.horizontalLayout_5, 1, 0, 1, 1)

        self.label_3 = QLabel(self.verticalLayoutWidget)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setAlignment(Qt.AlignCenter)

        self.gridLayout_7.addWidget(self.label_3, 0, 0, 1, 1)

        self.CNTMtabWidget.addTab(self.tab_2, "")

        self.gridLayout_5.addWidget(self.CNTMtabWidget, 0, 0, 1, 1)

        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QMenuBar(MainWindow)
        self.menubar.setObjectName(u"menubar")
        self.menubar.setGeometry(QRect(0, 0, 477, 21))
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QStatusBar(MainWindow)
        self.statusbar.setObjectName(u"statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)

        self.CNTMtabWidget.setCurrentIndex(1)


        QMetaObject.connectSlotsByName(MainWindow)
    # setupUi

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QCoreApplication.translate("MainWindow", u"MainWindow", None))
        self.ConnectManager_groupBox.setTitle(QCoreApplication.translate("MainWindow", u"ConnectManager_V01", None))
        self.AAddpushButton.setText(QCoreApplication.translate("MainWindow", u"add Item", None))
        self.ARemovepushButton.setText(QCoreApplication.translate("MainWindow", u"Remove", None))
        self.sortpushButton.setText(QCoreApplication.translate("MainWindow", u"Sort", None))
        self.reversepushButton.setText(QCoreApplication.translate("MainWindow", u"<>", None))
        self.pparentpushButton.setText(QCoreApplication.translate("MainWindow", u"PParent", None))
        self.BAddrpushButton.setText(QCoreApplication.translate("MainWindow", u"add Item", None))
        self.BRemovepushButton.setText(QCoreApplication.translate("MainWindow", u"Remove", None))
        self.connectTypegroupBox.setTitle("")
        self.OneToNradioButton.setText(QCoreApplication.translate("MainWindow", u"One To N", None))
        self.NToNradioButton.setText(QCoreApplication.translate("MainWindow", u"N to N", None))
        self.outAttrlabel.setText(QCoreApplication.translate("MainWindow", u"OutAttr : ", None))
        self.inAttrlabel.setText(QCoreApplication.translate("MainWindow", u"InAttr : ", None))
        self.connectpushButton.setText(QCoreApplication.translate("MainWindow", u"Connect", None))
        self.SetAttrpushButton.setText(QCoreApplication.translate("MainWindow", u"SetAttr", None))
        self.constTypegroupBox.setTitle("")
        self.parentradioButton.setText(QCoreApplication.translate("MainWindow", u"Parent", None))
        self.pointradioButton.setText(QCoreApplication.translate("MainWindow", u"Point", None))
        self.orientradioButton.setText(QCoreApplication.translate("MainWindow", u"Orient", None))
        self.scaleradioButton.setText(QCoreApplication.translate("MainWindow", u"Scale", None))
        self.maintaincheckBox.setText(QCoreApplication.translate("MainWindow", u"MainTain", None))
        self.constraintpushButton.setText(QCoreApplication.translate("MainWindow", u"Constraint", None))
        self.mirrorReversgroupBox.setTitle("")
        self.axisYZradioButton.setText(QCoreApplication.translate("MainWindow", u"AxisYZ", None))
        self.axisXYradioButton.setText(QCoreApplication.translate("MainWindow", u"AxisXY", None))
        self.axisZXradioButton.setText(QCoreApplication.translate("MainWindow", u"AxisZX", None))
        self.mirrorpushButton.setText(QCoreApplication.translate("MainWindow", u"Mirror", None))
        self.wrappushButton.setText(QCoreApplication.translate("MainWindow", u"Wrap", None))
        self.transformrpushButton.setText(QCoreApplication.translate("MainWindow", u"Transform", None))
        self.SkinBindpushButton.setText(QCoreApplication.translate("MainWindow", u"SkinBind", None))
        self.label.setText(QCoreApplication.translate("MainWindow", u"AUTHOR : SUNGSEO", None))
        self.label_2.setText(QCoreApplication.translate("MainWindow", u"UPDATE : 20210208", None))
        self.CNTMtabWidget.setTabText(self.CNTMtabWidget.indexOf(self.tab), QCoreApplication.translate("MainWindow", u"CNTM", None))
        self.CurveAtJointpushButton.setText(QCoreApplication.translate("MainWindow", u"Curve At Create", None))
        self.pushButton.setText(QCoreApplication.translate("MainWindow", u"Position Connect", None))
        self.radioButton_4.setText(QCoreApplication.translate("MainWindow", u"Point", None))
        self.radioButton_5.setText(QCoreApplication.translate("MainWindow", u"Param", None))
        self.radioButton_2.setText(QCoreApplication.translate("MainWindow", u"JOINT", None))
        self.radioButton.setText(QCoreApplication.translate("MainWindow", u"NULL", None))
        self.radioButton_3.setText(QCoreApplication.translate("MainWindow", u"LOCATOR", None))
        self.label_3.setText(QCoreApplication.translate("MainWindow", u"Curve At Create", None))
        self.CNTMtabWidget.setTabText(self.CNTMtabWidget.indexOf(self.tab_2), QCoreApplication.translate("MainWindow", u"Tab 2", None))
    # retranslateUi

