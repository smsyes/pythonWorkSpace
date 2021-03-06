from PySide2 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(298, 132)
        self.gridLayout = QtWidgets.QGridLayout(Form)
        self.gridLayout.setObjectName("gridLayout")
        self.name_lineEdit = QtWidgets.QLineEdit(Form)
        self.name_lineEdit.setObjectName("name_lineEdit")
        self.gridLayout.addWidget(self.name_lineEdit, 1, 0, 1, 1)
        self.padding_lineEdit = QtWidgets.QLineEdit(Form)
        self.padding_lineEdit.setObjectName("padding_lineEdit")
        self.gridLayout.addWidget(self.padding_lineEdit, 1, 1, 1, 1)
        self.rename_pushButton = QtWidgets.QPushButton(Form)
        self.rename_pushButton.setObjectName("rename_pushButton")
        self.gridLayout.addWidget(self.rename_pushButton, 1, 2, 1, 1)
        self.prefix_lineEdit = QtWidgets.QLineEdit(Form)
        self.prefix_lineEdit.setObjectName("prefix_lineEdit")
        self.gridLayout.addWidget(self.prefix_lineEdit, 2, 0, 1, 1)
        self.suffix_lineEdit = QtWidgets.QLineEdit(Form)
        self.suffix_lineEdit.setObjectName("suffix_lineEdit")
        self.gridLayout.addWidget(self.suffix_lineEdit, 2, 1, 1, 1)
        self.oldname_lineEdit = QtWidgets.QLineEdit(Form)
        self.oldname_lineEdit.setObjectName("oldname_lineEdit")
        self.gridLayout.addWidget(self.oldname_lineEdit, 3, 0, 1, 1)
        self.newname_lineEdit = QtWidgets.QLineEdit(Form)
        self.newname_lineEdit.setObjectName("newname_lineEdit")
        self.gridLayout.addWidget(self.newname_lineEdit, 3, 1, 1, 1)
        self.change_pushButton = QtWidgets.QPushButton(Form)
        self.change_pushButton.setObjectName("change_pushButton")
        self.gridLayout.addWidget(self.change_pushButton, 3, 2, 1, 1)
        self.message_label = QtWidgets.QLabel(Form)
        self.message_label.setAlignment(QtCore.Qt.AlignCenter)
        self.message_label.setObjectName("message_label")
        self.gridLayout.addWidget(self.message_label, 4, 0, 1, 3)
        self.label = QtWidgets.QLabel(Form)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 3)
        self.label_2 = QtWidgets.QLabel(Form)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 2, 2, 1, 1)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QtWidgets.QApplication.translate("Form", "Form", None, -1))
        self.name_lineEdit.setText(QtWidgets.QApplication.translate("Form", "Name..", None, -1))
        self.padding_lineEdit.setText(QtWidgets.QApplication.translate("Form", "1", None, -1))
        self.rename_pushButton.setText(QtWidgets.QApplication.translate("Form", "ReName", None, -1))
        self.prefix_lineEdit.setText(QtWidgets.QApplication.translate("Form", "Prefix..", None, -1))
        self.suffix_lineEdit.setText(QtWidgets.QApplication.translate("Form", "Suffix..", None, -1))
        self.oldname_lineEdit.setText(QtWidgets.QApplication.translate("Form", "Old Name..", None, -1))
        self.newname_lineEdit.setText(QtWidgets.QApplication.translate("Form", "New Name..", None, -1))
        self.change_pushButton.setText(QtWidgets.QApplication.translate("Form", "ChangeName", None, -1))
        self.message_label.setText(QtWidgets.QApplication.translate("Form", "...", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("Form", "# ReName = Prefix + Name + Padding(**) + Suffix", None, -1))
        self.label_2.setText(QtWidgets.QApplication.translate("Form", "<< Press Enter..", None, -1))