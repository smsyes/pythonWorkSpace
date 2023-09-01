<<<<<<< HEAD
# -*- coding: utf-8 -*-
import sys, os
from functools import partial

# External Modules
from PySide2.QtWidgets import *
from PySide2.QtGui import *
from PySide2.QtCore import *


# UI
from test_tree_ui import Ui_Form

class Tree(QWidget, Ui_Form):
    def __init__(self, version=None):
        super(Tree, self).__init__()
        self.setupUi(self)    
    
        self.initUI()
        self.initSignal()
    
    def initUI(self):
        self.initTreeHeader()
        
        tree = self.itemTree
        self.rootItem = QTreeWidgetItem()
        self.rootItem.setFlags(self.rootItem.flags() | Qt.ItemIsEditable)
        self.rootItem.setText(0, 'Root')  
        tree.addTopLevelItem(self.rootItem)
        
    def initSignal(self):
        self.addBtn.clicked.connect(self.addItem)
    
    def initTreeHeader(self):
        tree = self.itemTree
        
        header = ['', 'File', 'Bendy Index', 'Label', '', 'Description']
        headerWidth = [100, 150, 120, 120, 100, 100]
        
        self.setTreeColumn(tree, header, headerWidth)
        tree.header().setDefaultAlignment(Qt.AlignCenter)
        
# Slots
    def addItem(self):
        print("addItem()")
        
        tree = self.itemTree
        
        aValue = self.aValue.text()        
        
        if aValue:
            itemData = ['', aValue]
            treeItem = QTreeWidgetItem(self.rootItem, itemData)
            
            # 콤보박스 추가.
            labelCb = QComboBox()
            labelCb.addItems(['1','2', '3'])
            tree.setItemWidget(treeItem, 2, labelCb)
            
            # 스핀박스 추가.
            bendySpinBox = QSpinBox()
            tree.setItemWidget(treeItem, 3, bendySpinBox)
            
            button = QPushButton('Build')
            button.clicked.connect(self.build)
            tree.setItemWidget(treeItem, 4, button)
            
        tree.expandAll()
        
    def build(self):
        print("build()")
        
        tree = self.itemTree
        selectedItems = tree.selectedItems()
        
        if not selectedItems: return
        
        for item in selectedItems:
            # File Column
            print(item.text(1))
# Utils        
    def setTreeColumn(self, tree, header, headerWidth):
        tree.setColumnCount(len(header))
        for i, w in enumerate(headerWidth):
            tree.setColumnWidth(i, w)
        
        tree.setHeaderLabels(header)             
        
if __name__ == "__main__":
    app = QApplication(sys.argv)
    ex = Tree()
    ex.show()
    sys.exit(app.exec_())        
=======
# -*- coding: utf-8 -*-
import sys, os
from functools import partial

# External Modules
from PySide2.QtWidgets import *
from PySide2.QtGui import *
from PySide2.QtCore import *


# UI
from test_tree_ui import Ui_Form

class Tree(QWidget, Ui_Form):
    def __init__(self, version=None):
        super(Tree, self).__init__()
        self.setupUi(self)    
    
        self.initUI()
        self.initSignal()
    
    def initUI(self):
        self.initTreeHeader()
        
        tree = self.itemTree
        self.rootItem = QTreeWidgetItem()
        self.rootItem.setFlags(self.rootItem.flags() | Qt.ItemIsEditable)
        self.rootItem.setText(0, 'Root')  
        tree.addTopLevelItem(self.rootItem)
        
    def initSignal(self):
        self.addBtn.clicked.connect(self.addItem)
    
    def initTreeHeader(self):
        tree = self.itemTree
        
        header = ['', 'File', 'Bendy Index', 'Label', '', 'Description']
        headerWidth = [100, 150, 120, 120, 100, 100]
        
        self.setTreeColumn(tree, header, headerWidth)
        tree.header().setDefaultAlignment(Qt.AlignCenter)
        
# Slots
    def addItem(self):
        print("addItem()")
        
        tree = self.itemTree
        
        aValue = self.aValue.text()        
        
        if aValue:
            itemData = ['', aValue]
            treeItem = QTreeWidgetItem(self.rootItem, itemData)
            
            # 콤보박스 추가.
            labelCb = QComboBox()
            labelCb.addItems(['1','2', '3'])
            tree.setItemWidget(treeItem, 2, labelCb)
            
            # 스핀박스 추가.
            bendySpinBox = QSpinBox()
            tree.setItemWidget(treeItem, 3, bendySpinBox)
            
            button = QPushButton('Build')
            button.clicked.connect(self.build)
            tree.setItemWidget(treeItem, 4, button)
            
        tree.expandAll()
        
    def build(self):
        print("build()")
        
        tree = self.itemTree
        selectedItems = tree.selectedItems()
        
        if not selectedItems: return
        
        for item in selectedItems:
            # File Column
            print(item.text(1))
# Utils        
    def setTreeColumn(self, tree, header, headerWidth):
        tree.setColumnCount(len(header))
        for i, w in enumerate(headerWidth):
            tree.setColumnWidth(i, w)
        
        tree.setHeaderLabels(header)             
        
if __name__ == "__main__":
    app = QApplication(sys.argv)
    ex = Tree()
    ex.show()
    sys.exit(app.exec_())        
>>>>>>> 7fbe2e4865dac72f9e1d3236bb58bc662cf9bf6b
    