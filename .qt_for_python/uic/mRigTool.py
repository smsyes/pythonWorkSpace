# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'mRigTool.ui'
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
        Form.resize(500, 713)
        self.verticalLayout_5 = QVBoxLayout(Form)
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.tabWidget = QTabWidget(Form)
        self.tabWidget.setObjectName(u"tabWidget")
        self.rename_tap = QWidget()
        self.rename_tap.setObjectName(u"rename_tap")
        self.verticalLayout_3 = QVBoxLayout(self.rename_tap)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.verticalLayout_2 = QVBoxLayout()
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.label_17 = QLabel(self.rename_tap)
        self.label_17.setObjectName(u"label_17")
        font = QFont()
        font.setPointSize(15)
        font.setBold(True)
        font.setWeight(75)
        self.label_17.setFont(font)
        self.label_17.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout_2.addWidget(self.label_17)

        self.label_19 = QLabel(self.rename_tap)
        self.label_19.setObjectName(u"label_19")
        self.label_19.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout_2.addWidget(self.label_19)

        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.name_lineEdit = QLineEdit(self.rename_tap)
        self.name_lineEdit.setObjectName(u"name_lineEdit")

        self.horizontalLayout_2.addWidget(self.name_lineEdit)

        self.NumspinBox = QSpinBox(self.rename_tap)
        self.NumspinBox.setObjectName(u"NumspinBox")

        self.horizontalLayout_2.addWidget(self.NumspinBox)

        self.AlphacheckBox = QCheckBox(self.rename_tap)
        self.AlphacheckBox.setObjectName(u"AlphacheckBox")

        self.horizontalLayout_2.addWidget(self.AlphacheckBox)


        self.verticalLayout_2.addLayout(self.horizontalLayout_2)

        self.line_9 = QFrame(self.rename_tap)
        self.line_9.setObjectName(u"line_9")
        self.line_9.setFrameShape(QFrame.HLine)
        self.line_9.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_2.addWidget(self.line_9)

        self.label_20 = QLabel(self.rename_tap)
        self.label_20.setObjectName(u"label_20")

        self.verticalLayout_2.addWidget(self.label_20)

        self.horizontalLayout_3 = QHBoxLayout()
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.prefix_lineEdit = QLineEdit(self.rename_tap)
        self.prefix_lineEdit.setObjectName(u"prefix_lineEdit")

        self.horizontalLayout_3.addWidget(self.prefix_lineEdit)

        self.suffix_lineEdit = QLineEdit(self.rename_tap)
        self.suffix_lineEdit.setObjectName(u"suffix_lineEdit")

        self.horizontalLayout_3.addWidget(self.suffix_lineEdit)


        self.verticalLayout_2.addLayout(self.horizontalLayout_3)

        self.line_10 = QFrame(self.rename_tap)
        self.line_10.setObjectName(u"line_10")
        self.line_10.setFrameShape(QFrame.HLine)
        self.line_10.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_2.addWidget(self.line_10)

        self.label_21 = QLabel(self.rename_tap)
        self.label_21.setObjectName(u"label_21")

        self.verticalLayout_2.addWidget(self.label_21)

        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.oldname_lineEdit = QLineEdit(self.rename_tap)
        self.oldname_lineEdit.setObjectName(u"oldname_lineEdit")

        self.horizontalLayout_4.addWidget(self.oldname_lineEdit)

        self.newname_lineEdit = QLineEdit(self.rename_tap)
        self.newname_lineEdit.setObjectName(u"newname_lineEdit")

        self.horizontalLayout_4.addWidget(self.newname_lineEdit)

        self.change_pushButton = QPushButton(self.rename_tap)
        self.change_pushButton.setObjectName(u"change_pushButton")

        self.horizontalLayout_4.addWidget(self.change_pushButton)


        self.verticalLayout_2.addLayout(self.horizontalLayout_4)

        self.message_label = QLabel(self.rename_tap)
        self.message_label.setObjectName(u"message_label")
        self.message_label.setAlignment(Qt.AlignCenter)

        self.verticalLayout_2.addWidget(self.message_label)


        self.verticalLayout_3.addLayout(self.verticalLayout_2)

        self.verticalSpacer = QSpacerItem(20, 330, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_3.addItem(self.verticalSpacer)

        self.tabWidget.addTab(self.rename_tap, "")
        self.rigSupport_tap = QWidget()
        self.rigSupport_tap.setObjectName(u"rigSupport_tap")
        self.verticalLayout = QVBoxLayout(self.rigSupport_tap)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.label_12 = QLabel(self.rigSupport_tap)
        self.label_12.setObjectName(u"label_12")
        self.label_12.setFont(font)

        self.verticalLayout.addWidget(self.label_12)

        self.line_5 = QFrame(self.rigSupport_tap)
        self.line_5.setObjectName(u"line_5")
        self.line_5.setFrameShape(QFrame.HLine)
        self.line_5.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_5)

        self.baseName_lineEdit = QLineEdit(self.rigSupport_tap)
        self.baseName_lineEdit.setObjectName(u"baseName_lineEdit")
        self.baseName_lineEdit.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.baseName_lineEdit)

        self.line_15 = QFrame(self.rigSupport_tap)
        self.line_15.setObjectName(u"line_15")
        self.line_15.setFrameShape(QFrame.HLine)
        self.line_15.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_15)

        self.label = QLabel(self.rigSupport_tap)
        self.label.setObjectName(u"label")
        font1 = QFont()
        font1.setBold(True)
        font1.setWeight(75)
        self.label.setFont(font1)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.label_3 = QLabel(self.rigSupport_tap)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_3)

        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.label_2 = QLabel(self.rigSupport_tap)
        self.label_2.setObjectName(u"label_2")
        self.label_2.setAlignment(Qt.AlignRight|Qt.AlignTrailing|Qt.AlignVCenter)

        self.horizontalLayout.addWidget(self.label_2)

        self.spacingNum_spinBox = QSpinBox(self.rigSupport_tap)
        self.spacingNum_spinBox.setObjectName(u"spacingNum_spinBox")
        self.spacingNum_spinBox.setValue(3)

        self.horizontalLayout.addWidget(self.spacingNum_spinBox)

        self.label_18 = QLabel(self.rigSupport_tap)
        self.label_18.setObjectName(u"label_18")
        self.label_18.setAlignment(Qt.AlignRight|Qt.AlignTrailing|Qt.AlignVCenter)

        self.horizontalLayout.addWidget(self.label_18)

        self.oj_comboBox = QComboBox(self.rigSupport_tap)
        self.oj_comboBox.addItem("")
        self.oj_comboBox.addItem("")
        self.oj_comboBox.addItem("")
        self.oj_comboBox.addItem("")
        self.oj_comboBox.addItem("")
        self.oj_comboBox.addItem("")
        self.oj_comboBox.setObjectName(u"oj_comboBox")

        self.horizontalLayout.addWidget(self.oj_comboBox)

        self.sao_comboBox = QComboBox(self.rigSupport_tap)
        self.sao_comboBox.addItem("")
        self.sao_comboBox.addItem("")
        self.sao_comboBox.addItem("")
        self.sao_comboBox.addItem("")
        self.sao_comboBox.addItem("")
        self.sao_comboBox.addItem("")
        self.sao_comboBox.setObjectName(u"sao_comboBox")

        self.horizontalLayout.addWidget(self.sao_comboBox)

        self.LSJoint_pushButton = QPushButton(self.rigSupport_tap)
        self.LSJoint_pushButton.setObjectName(u"LSJoint_pushButton")

        self.horizontalLayout.addWidget(self.LSJoint_pushButton)


        self.verticalLayout.addLayout(self.horizontalLayout)

        self.line = QFrame(self.rigSupport_tap)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line)

        self.label_5 = QLabel(self.rigSupport_tap)
        self.label_5.setObjectName(u"label_5")
        self.label_5.setFont(font1)
        self.label_5.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_5)

        self.label_6 = QLabel(self.rigSupport_tap)
        self.label_6.setObjectName(u"label_6")
        self.label_6.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_6)

        self.main_pushButton = QPushButton(self.rigSupport_tap)
        self.main_pushButton.setObjectName(u"main_pushButton")

        self.verticalLayout.addWidget(self.main_pushButton)

        self.line_2 = QFrame(self.rigSupport_tap)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_2)

        self.label_8 = QLabel(self.rigSupport_tap)
        self.label_8.setObjectName(u"label_8")
        self.label_8.setFont(font1)
        self.label_8.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_8)

        self.label_7 = QLabel(self.rigSupport_tap)
        self.label_7.setObjectName(u"label_7")
        self.label_7.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_7)

        self.paramSpace_pushButton = QPushButton(self.rigSupport_tap)
        self.paramSpace_pushButton.setObjectName(u"paramSpace_pushButton")

        self.verticalLayout.addWidget(self.paramSpace_pushButton)

        self.line_3 = QFrame(self.rigSupport_tap)
        self.line_3.setObjectName(u"line_3")
        self.line_3.setFrameShape(QFrame.HLine)
        self.line_3.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_3)

        self.label_9 = QLabel(self.rigSupport_tap)
        self.label_9.setObjectName(u"label_9")
        self.label_9.setFont(font1)
        self.label_9.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_9)

        self.label_4 = QLabel(self.rigSupport_tap)
        self.label_4.setObjectName(u"label_4")
        self.label_4.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_4)

        self.hybrid_pushButton = QPushButton(self.rigSupport_tap)
        self.hybrid_pushButton.setObjectName(u"hybrid_pushButton")

        self.verticalLayout.addWidget(self.hybrid_pushButton)

        self.line_4 = QFrame(self.rigSupport_tap)
        self.line_4.setObjectName(u"line_4")
        self.line_4.setFrameShape(QFrame.HLine)
        self.line_4.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_4)

        self.label_10 = QLabel(self.rigSupport_tap)
        self.label_10.setObjectName(u"label_10")
        self.label_10.setFont(font1)
        self.label_10.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_10)

        self.label_11 = QLabel(self.rigSupport_tap)
        self.label_11.setObjectName(u"label_11")
        self.label_11.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_11)

        self.horizontalLayout_8 = QHBoxLayout()
        self.horizontalLayout_8.setObjectName(u"horizontalLayout_8")
        self.objCV_pushButton = QPushButton(self.rigSupport_tap)
        self.objCV_pushButton.setObjectName(u"objCV_pushButton")

        self.horizontalLayout_8.addWidget(self.objCV_pushButton)

        self.crvNull_pushButton = QPushButton(self.rigSupport_tap)
        self.crvNull_pushButton.setObjectName(u"crvNull_pushButton")

        self.horizontalLayout_8.addWidget(self.crvNull_pushButton)


        self.verticalLayout.addLayout(self.horizontalLayout_8)

        self.attach_pushButton = QPushButton(self.rigSupport_tap)
        self.attach_pushButton.setObjectName(u"attach_pushButton")

        self.verticalLayout.addWidget(self.attach_pushButton)

        self.line_6 = QFrame(self.rigSupport_tap)
        self.line_6.setObjectName(u"line_6")
        self.line_6.setFrameShape(QFrame.HLine)
        self.line_6.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_6)

        self.label_13 = QLabel(self.rigSupport_tap)
        self.label_13.setObjectName(u"label_13")
        self.label_13.setFont(font1)
        self.label_13.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_13)

        self.label_15 = QLabel(self.rigSupport_tap)
        self.label_15.setObjectName(u"label_15")
        self.label_15.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_15)

        self.switchImport_pushButton = QPushButton(self.rigSupport_tap)
        self.switchImport_pushButton.setObjectName(u"switchImport_pushButton")

        self.verticalLayout.addWidget(self.switchImport_pushButton)

        self.line_7 = QFrame(self.rigSupport_tap)
        self.line_7.setObjectName(u"line_7")
        self.line_7.setFrameShape(QFrame.HLine)
        self.line_7.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_7)

        self.label_14 = QLabel(self.rigSupport_tap)
        self.label_14.setObjectName(u"label_14")
        self.label_14.setFont(font1)
        self.label_14.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_14)

        self.label_16 = QLabel(self.rigSupport_tap)
        self.label_16.setObjectName(u"label_16")
        self.label_16.setAlignment(Qt.AlignLeading|Qt.AlignLeft|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_16)

        self.shapeChange_pushButton = QPushButton(self.rigSupport_tap)
        self.shapeChange_pushButton.setObjectName(u"shapeChange_pushButton")

        self.verticalLayout.addWidget(self.shapeChange_pushButton)

        self.tabWidget.addTab(self.rigSupport_tap, "")
        self.moduleBuilder_tap = QWidget()
        self.moduleBuilder_tap.setObjectName(u"moduleBuilder_tap")
        self.verticalLayout_4 = QVBoxLayout(self.moduleBuilder_tap)
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.label_30 = QLabel(self.moduleBuilder_tap)
        self.label_30.setObjectName(u"label_30")
        self.label_30.setFont(font)

        self.verticalLayout_4.addWidget(self.label_30)

        self.line_11 = QFrame(self.moduleBuilder_tap)
        self.line_11.setObjectName(u"line_11")
        self.line_11.setFrameShape(QFrame.HLine)
        self.line_11.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_4.addWidget(self.line_11)

        self.label_22 = QLabel(self.moduleBuilder_tap)
        self.label_22.setObjectName(u"label_22")

        self.verticalLayout_4.addWidget(self.label_22)

        self.M_prefix_lineEdit = QLineEdit(self.moduleBuilder_tap)
        self.M_prefix_lineEdit.setObjectName(u"M_prefix_lineEdit")

        self.verticalLayout_4.addWidget(self.M_prefix_lineEdit)

        self.module_comboBox = QComboBox(self.moduleBuilder_tap)
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.addItem("")
        self.module_comboBox.setObjectName(u"module_comboBox")

        self.verticalLayout_4.addWidget(self.module_comboBox)

        self.import_pushButton = QPushButton(self.moduleBuilder_tap)
        self.import_pushButton.setObjectName(u"import_pushButton")

        self.verticalLayout_4.addWidget(self.import_pushButton)

        self.label_29 = QLabel(self.moduleBuilder_tap)
        self.label_29.setObjectName(u"label_29")

        self.verticalLayout_4.addWidget(self.label_29)

        self.bendAdd_pushButton = QPushButton(self.moduleBuilder_tap)
        self.bendAdd_pushButton.setObjectName(u"bendAdd_pushButton")

        self.verticalLayout_4.addWidget(self.bendAdd_pushButton)

        self.label_25 = QLabel(self.moduleBuilder_tap)
        self.label_25.setObjectName(u"label_25")

        self.verticalLayout_4.addWidget(self.label_25)

        self.mirror_pushButton = QPushButton(self.moduleBuilder_tap)
        self.mirror_pushButton.setObjectName(u"mirror_pushButton")

        self.verticalLayout_4.addWidget(self.mirror_pushButton)

        self.horizontalLayout_7 = QHBoxLayout()
        self.horizontalLayout_7.setObjectName(u"horizontalLayout_7")
        self.build_pushButton = QPushButton(self.moduleBuilder_tap)
        self.build_pushButton.setObjectName(u"build_pushButton")

        self.horizontalLayout_7.addWidget(self.build_pushButton)

        self.rebuild_pushButton = QPushButton(self.moduleBuilder_tap)
        self.rebuild_pushButton.setObjectName(u"rebuild_pushButton")

        self.horizontalLayout_7.addWidget(self.rebuild_pushButton)


        self.verticalLayout_4.addLayout(self.horizontalLayout_7)

        self.line_14 = QFrame(self.moduleBuilder_tap)
        self.line_14.setObjectName(u"line_14")
        self.line_14.setFrameShape(QFrame.HLine)
        self.line_14.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_4.addWidget(self.line_14)

        self.label_27 = QLabel(self.moduleBuilder_tap)
        self.label_27.setObjectName(u"label_27")

        self.verticalLayout_4.addWidget(self.label_27)

        self.label_23 = QLabel(self.moduleBuilder_tap)
        self.label_23.setObjectName(u"label_23")

        self.verticalLayout_4.addWidget(self.label_23)

        self.parent_pushButton = QPushButton(self.moduleBuilder_tap)
        self.parent_pushButton.setObjectName(u"parent_pushButton")

        self.verticalLayout_4.addWidget(self.parent_pushButton)

        self.line_13 = QFrame(self.moduleBuilder_tap)
        self.line_13.setObjectName(u"line_13")
        self.line_13.setFrameShape(QFrame.HLine)
        self.line_13.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_4.addWidget(self.line_13)

        self.label_28 = QLabel(self.moduleBuilder_tap)
        self.label_28.setObjectName(u"label_28")

        self.verticalLayout_4.addWidget(self.label_28)

        self.label_24 = QLabel(self.moduleBuilder_tap)
        self.label_24.setObjectName(u"label_24")

        self.verticalLayout_4.addWidget(self.label_24)

        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.followEnum_lineEdit = QLineEdit(self.moduleBuilder_tap)
        self.followEnum_lineEdit.setObjectName(u"followEnum_lineEdit")

        self.horizontalLayout_5.addWidget(self.followEnum_lineEdit)

        self.followAdd_pushButton = QPushButton(self.moduleBuilder_tap)
        self.followAdd_pushButton.setObjectName(u"followAdd_pushButton")

        self.horizontalLayout_5.addWidget(self.followAdd_pushButton)


        self.verticalLayout_4.addLayout(self.horizontalLayout_5)

        self.tabWidget.addTab(self.moduleBuilder_tap, "")

        self.verticalLayout_5.addWidget(self.tabWidget)

        self.line_8 = QFrame(Form)
        self.line_8.setObjectName(u"line_8")
        self.line_8.setFrameShape(QFrame.HLine)
        self.line_8.setFrameShadow(QFrame.Sunken)

        self.verticalLayout_5.addWidget(self.line_8)

        self.data_label = QLabel(Form)
        self.data_label.setObjectName(u"data_label")
        self.data_label.setAlignment(Qt.AlignCenter)

        self.verticalLayout_5.addWidget(self.data_label)

        self.authour_label = QLabel(Form)
        self.authour_label.setObjectName(u"authour_label")
        self.authour_label.setAlignment(Qt.AlignCenter)

        self.verticalLayout_5.addWidget(self.authour_label)


        self.retranslateUi(Form)

        self.tabWidget.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(Form)
    # setupUi

    def retranslateUi(self, Form):
        Form.setWindowTitle(QCoreApplication.translate("Form", u"Form", None))
        self.label_17.setText(QCoreApplication.translate("Form", u"ReNamer", None))
        self.label_19.setText(QCoreApplication.translate("Form", u"# ReName = Name or Name + Padding(**)", None))
        self.name_lineEdit.setText(QCoreApplication.translate("Form", u"Name..", None))
        self.AlphacheckBox.setText(QCoreApplication.translate("Form", u"Alphabet", None))
        self.label_20.setText(QCoreApplication.translate("Form", u"# Enter after entering", None))
        self.prefix_lineEdit.setText(QCoreApplication.translate("Form", u"Prefix..", None))
        self.suffix_lineEdit.setText(QCoreApplication.translate("Form", u"Suffix..", None))
        self.label_21.setText(QCoreApplication.translate("Form", u"# Old Name >> New Name", None))
        self.oldname_lineEdit.setText(QCoreApplication.translate("Form", u"Old Name..", None))
        self.newname_lineEdit.setText(QCoreApplication.translate("Form", u"New Name..", None))
        self.change_pushButton.setText(QCoreApplication.translate("Form", u"ChangeName", None))
        self.message_label.setText(QCoreApplication.translate("Form", u"...", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.rename_tap), QCoreApplication.translate("Form", u"rename", None))
        self.label_12.setText(QCoreApplication.translate("Form", u"Rig Support Tool", None))
        self.baseName_lineEdit.setText(QCoreApplication.translate("Form", u" Base Name entering..", None))
        self.label.setText(QCoreApplication.translate("Form", u"Linear Spacing Joint", None))
        self.label_3.setText(QCoreApplication.translate("Form", u"# Select the top joints and set (default [xAxis, zUp])", None))
        self.label_2.setText(QCoreApplication.translate("Form", u"Spacing Number : ", None))
        self.label_18.setText(QCoreApplication.translate("Form", u"orientJoint : ", None))
        self.oj_comboBox.setItemText(0, QCoreApplication.translate("Form", u"xzy", None))
        self.oj_comboBox.setItemText(1, QCoreApplication.translate("Form", u"yxz", None))
        self.oj_comboBox.setItemText(2, QCoreApplication.translate("Form", u"zyx", None))
        self.oj_comboBox.setItemText(3, QCoreApplication.translate("Form", u"xyz", None))
        self.oj_comboBox.setItemText(4, QCoreApplication.translate("Form", u"yzx", None))
        self.oj_comboBox.setItemText(5, QCoreApplication.translate("Form", u"zxy", None))

        self.sao_comboBox.setItemText(0, QCoreApplication.translate("Form", u"zup", None))
        self.sao_comboBox.setItemText(1, QCoreApplication.translate("Form", u"yup", None))
        self.sao_comboBox.setItemText(2, QCoreApplication.translate("Form", u"xup", None))
        self.sao_comboBox.setItemText(3, QCoreApplication.translate("Form", u"zdown", None))
        self.sao_comboBox.setItemText(4, QCoreApplication.translate("Form", u"ydown", None))
        self.sao_comboBox.setItemText(5, QCoreApplication.translate("Form", u"xdown", None))

        self.LSJoint_pushButton.setText(QCoreApplication.translate("Form", u"Set", None))
        self.label_5.setText(QCoreApplication.translate("Form", u"Main Setting", None))
        self.label_6.setText(QCoreApplication.translate("Form", u"# Select the top joint and build", None))
        self.main_pushButton.setText(QCoreApplication.translate("Form", u"Main FK / IK Build", None))
        self.label_8.setText(QCoreApplication.translate("Form", u"Surface Parameter Space", None))
        self.label_7.setText(QCoreApplication.translate("Form", u"# Select the surface and get", None))
        self.paramSpace_pushButton.setText(QCoreApplication.translate("Form", u"Get Space", None))
        self.label_9.setText(QCoreApplication.translate("Form", u"Hybrid Setting", None))
        self.label_4.setText(QCoreApplication.translate("Form", u"# Select the top joints and build", None))
        self.hybrid_pushButton.setText(QCoreApplication.translate("Form", u"Hybrid FK / IK Build", None))
        self.label_10.setText(QCoreApplication.translate("Form", u"Attach Setting", None))
        self.label_11.setText(QCoreApplication.translate("Form", u"# Select the curve and build", None))
        self.objCV_pushButton.setText(QCoreApplication.translate("Form", u"Object CV Curve", None))
        self.crvNull_pushButton.setText(QCoreApplication.translate("Form", u"Curve At Null", None))
        self.attach_pushButton.setText(QCoreApplication.translate("Form", u"Attach Build", None))
        self.label_13.setText(QCoreApplication.translate("Form", u"Switch Setting", None))
        self.label_15.setText(QCoreApplication.translate("Form", u"#  Switch.ma file import", None))
        self.switchImport_pushButton.setText(QCoreApplication.translate("Form", u"Import", None))
        self.label_14.setText(QCoreApplication.translate("Form", u"Curve Shape Change", None))
        self.label_16.setText(QCoreApplication.translate("Form", u"# Select[0] : Item / Select[1] : Target", None))
        self.shapeChange_pushButton.setText(QCoreApplication.translate("Form", u"Change", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.rigSupport_tap), QCoreApplication.translate("Form", u"rigSupport", None))
        self.label_30.setText(QCoreApplication.translate("Form", u"Module Builder", None))
        self.label_22.setText(QCoreApplication.translate("Form", u"# If a fit file exists in the prefix name and path, it will be imported.", None))
        self.M_prefix_lineEdit.setText(QCoreApplication.translate("Form", u"Prefix Name..", None))
        self.module_comboBox.setItemText(0, QCoreApplication.translate("Form", u"spine", None))
        self.module_comboBox.setItemText(1, QCoreApplication.translate("Form", u"leg", None))
        self.module_comboBox.setItemText(2, QCoreApplication.translate("Form", u"arm", None))
        self.module_comboBox.setItemText(3, QCoreApplication.translate("Form", u"neck", None))
        self.module_comboBox.setItemText(4, QCoreApplication.translate("Form", u"head", None))
        self.module_comboBox.setItemText(5, QCoreApplication.translate("Form", u"hand", None))
        self.module_comboBox.setItemText(6, QCoreApplication.translate("Form", u"foot", None))
        self.module_comboBox.setItemText(7, QCoreApplication.translate("Form", u"Qarm", None))
        self.module_comboBox.setItemText(8, QCoreApplication.translate("Form", u"Qleg", None))
        self.module_comboBox.setItemText(9, QCoreApplication.translate("Form", u"tail", None))

        self.import_pushButton.setText(QCoreApplication.translate("Form", u"Import", None))
        self.label_29.setText(QCoreApplication.translate("Form", u"# Execute after selecting the joint to be installed", None))
        self.bendAdd_pushButton.setText(QCoreApplication.translate("Form", u"Bend Add", None))
        self.label_25.setText(QCoreApplication.translate("Form", u"# Selection List [0] = Base Fit top group / Selection List [1] = Mirror Fit top group", None))
        self.mirror_pushButton.setText(QCoreApplication.translate("Form", u"Mirror", None))
        self.build_pushButton.setText(QCoreApplication.translate("Form", u"Build", None))
        self.rebuild_pushButton.setText(QCoreApplication.translate("Form", u"ReBuild", None))
        self.label_27.setText(QCoreApplication.translate("Form", u"Module Parent", None))
        self.label_23.setText(QCoreApplication.translate("Form", u"# Selection List [0] = Parents Joint / Selection List [1] = Child top Group", None))
        self.parent_pushButton.setText(QCoreApplication.translate("Form", u"Parent", None))
        self.label_28.setText(QCoreApplication.translate("Form", u"Follow Setting", None))
        self.label_24.setText(QCoreApplication.translate("Form", u"# Selection List [:-1] = Follower / Selection List [-1] = Following", None))
        self.followEnum_lineEdit.setText(QCoreApplication.translate("Form", u"Enum Name..", None))
        self.followAdd_pushButton.setText(QCoreApplication.translate("Form", u"Add", None))
        self.tabWidget.setTabText(self.tabWidget.indexOf(self.moduleBuilder_tap), QCoreApplication.translate("Form", u"moduleBuilder", None))
        self.data_label.setText(QCoreApplication.translate("Form", u"DATA : 20210706", None))
        self.authour_label.setText(QCoreApplication.translate("Form", u"AUTHOUR : Minsung", None))
    # retranslateUi

