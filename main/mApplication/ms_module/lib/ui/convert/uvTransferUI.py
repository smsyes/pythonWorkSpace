from PySide2 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(284, 59)
        self.gridLayout = QtWidgets.QGridLayout(Form)
        self.gridLayout.setObjectName("gridLayout")
        self.NToNradioButton = QtWidgets.QRadioButton(Form)
        self.NToNradioButton.setChecked(True)
        self.NToNradioButton.setObjectName("NToNradioButton")
        self.gridLayout.addWidget(self.NToNradioButton, 1, 0, 1, 1)
        self.OneToNradioButton = QtWidgets.QRadioButton(Form)
        self.OneToNradioButton.setObjectName("OneToNradioButton")
        self.gridLayout.addWidget(self.OneToNradioButton, 1, 1, 1, 1)
        self.TransferpushButton = QtWidgets.QPushButton(Form)
        self.TransferpushButton.setObjectName("TransferpushButton")
        self.gridLayout.addWidget(self.TransferpushButton, 1, 2, 1, 1)
        self.label = QtWidgets.QLabel(Form)
        self.label.setAlignment(QtCore.Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 3)

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QtWidgets.QApplication.translate("Form", "Form", None, -1))
        self.NToNradioButton.setText(QtWidgets.QApplication.translate("Form", "N : N", None, -1))
        self.OneToNradioButton.setText(QtWidgets.QApplication.translate("Form", "One : N", None, -1))
        self.TransferpushButton.setText(QtWidgets.QApplication.translate("Form", "UV Transfer", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("Form", "# Half or FirstItem and Target[:-1] List Transfer", None, -1))