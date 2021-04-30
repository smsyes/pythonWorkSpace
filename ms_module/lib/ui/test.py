from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance 

  
  
class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(397, 306)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout.setObjectName("gridLayout")
        self.treeWidget = QtWidgets.QTreeWidget(self.centralwidget)
        self.treeWidget.setObjectName("treeWidget")
        item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        item_1 = QtWidgets.QTreeWidgetItem(item_0)
        item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        item_1 = QtWidgets.QTreeWidgetItem(item_0)
        item_0 = QtWidgets.QTreeWidgetItem(self.treeWidget)
        item_1 = QtWidgets.QTreeWidgetItem(item_0)
        self.treeWidget.header().setDefaultSectionSize(50)
        self.gridLayout.addWidget(self.treeWidget, 0, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 397, 21))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        MainWindow.setWindowTitle(QtWidgets.QApplication.translate("MainWindow", "MainWindow", None, -1))
        self.treeWidget.headerItem().setText(0, QtWidgets.QApplication.translate("MainWindow", "aaa", None, -1))
        self.treeWidget.headerItem().setText(1, QtWidgets.QApplication.translate("MainWindow", "bbb", None, -1))
        self.treeWidget.headerItem().setText(2, QtWidgets.QApplication.translate("MainWindow", "ccc", None, -1))
        __sortingEnabled = self.treeWidget.isSortingEnabled()
        self.treeWidget.setSortingEnabled(False)
        self.treeWidget.topLevelItem(0).setText(0, QtWidgets.QApplication.translate("MainWindow", "ag", None, -1))
        self.treeWidget.topLevelItem(0).setText(1, QtWidgets.QApplication.translate("MainWindow", "ad", None, -1))
        self.treeWidget.topLevelItem(0).setText(2, QtWidgets.QApplication.translate("MainWindow", "ah", None, -1))
        self.treeWidget.topLevelItem(0).child(0).setText(0, QtWidgets.QApplication.translate("MainWindow", "eidt", None, -1))
        self.treeWidget.topLevelItem(0).child(0).setText(1, QtWidgets.QApplication.translate("MainWindow", "value", None, -1))
        self.treeWidget.topLevelItem(1).setText(0, QtWidgets.QApplication.translate("MainWindow", "ag", None, -1))
        self.treeWidget.topLevelItem(1).setText(1, QtWidgets.QApplication.translate("MainWindow", "ad", None, -1))
        self.treeWidget.topLevelItem(1).setText(2, QtWidgets.QApplication.translate("MainWindow", "ah", None, -1))
        self.treeWidget.topLevelItem(1).child(0).setText(0, QtWidgets.QApplication.translate("MainWindow", "edit", None, -1))
        self.treeWidget.topLevelItem(1).child(0).setText(1, QtWidgets.QApplication.translate("MainWindow", "value", None, -1))
        self.treeWidget.topLevelItem(2).setText(0, QtWidgets.QApplication.translate("MainWindow", "ag", None, -1))
        self.treeWidget.topLevelItem(2).setText(1, QtWidgets.QApplication.translate("MainWindow", "ad", None, -1))
        self.treeWidget.topLevelItem(2).setText(2, QtWidgets.QApplication.translate("MainWindow", "ah", None, -1))
        self.treeWidget.topLevelItem(2).child(0).setText(0, QtWidgets.QApplication.translate("MainWindow", "edit", None, -1))
        self.treeWidget.topLevelItem(2).child(0).setText(1, QtWidgets.QApplication.translate("MainWindow", "value", None, -1))
        self.treeWidget.setSortingEnabled(__sortingEnabled)
        
        
class myUIClass(QMainWindow,QWidget):
    def __init__(self, parent = None):
        super(myUIClass, self).__init__(parent)
        
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
    

def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(long(main_window_ptr), QWidget)
    
def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()

runWin()