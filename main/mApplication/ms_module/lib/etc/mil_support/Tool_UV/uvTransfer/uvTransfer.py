import maya.OpenMayaUI as omui
from pymel.core import *

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance


class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(284, 59)
        self.gridLayout = QGridLayout(Form)
        self.gridLayout.setObjectName("gridLayout")
        self.NToNradioButton = QRadioButton(Form)
        self.NToNradioButton.setChecked(True)
        self.NToNradioButton.setObjectName("NToNradioButton")
        self.gridLayout.addWidget(self.NToNradioButton, 1, 0, 1, 1)
        self.OneToNradioButton = QRadioButton(Form)
        self.OneToNradioButton.setObjectName("OneToNradioButton")
        self.gridLayout.addWidget(self.OneToNradioButton, 1, 1, 1, 1)
        self.TransferpushButton = QPushButton(Form)
        self.TransferpushButton.setObjectName("TransferpushButton")
        self.gridLayout.addWidget(self.TransferpushButton, 1, 2, 1, 1)
        self.label = QLabel(Form)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 3)

        self.retranslateUi(Form)
        QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QApplication.translate("Form", "Form", None, -1))
        self.NToNradioButton.setText(QApplication.translate("Form", "N : N", None, -1))
        self.OneToNradioButton.setText(QApplication.translate("Form", "One : N", None, -1))
        self.TransferpushButton.setText(QApplication.translate("Form", "UV Transfer", None, -1))
        self.label.setText(QApplication.translate("Form", "# Half or FirstItem and Target[:-1] List Transfer", None, -1))


class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_Form()
        self.ui.setupUi(self)

        self.ui.TransferpushButton.clicked.connect(self.transfer_)


    def checkRadio(self):
        result = None
        if self.ui.NToNradioButton.isChecked():
            result = True
        if self.ui.OneToNradioButton.isChecked():
            result = False
        return result

    
    def divide_in_two(self, object_):
        divideNum = len(object_)/2
        items = object_[:divideNum]
        targets = object_[divideNum:]
        return items, targets


    def transfer_(self):
        half_ = self.checkRadio()
        object_ = ls(sl=1,fl=1,r=1)
        if half_==True:
            items, targets = self.divide_in_two(object_)
        else:
            items = ls(object_[0])
            targets = object_[1:]
            
        for i,target in enumerate(targets):
            if half_==True:
                index=i
            else:
                index=0
            transferAttributes(items[index], 
                            target, 
                            pos=0, 
                            nml=0, 
                            uvs=2, 
                            col=2, 
                            spa=1, 
                            sus="map1", 
                            tus="map1", 
                            sm=3, 
                            fuv=0, 
                            clb=1
                            )
            print "{0} >> {1} Trnasfer..".format(items[index], target)
        

def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = myUIClass(parent=maya_main_window())
    MainWindow.show()