# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
reNamer Tool

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20240827

:Example:
Pakage is reNamer.pyc

from rigSupport.ui.deliver import reNamer
import reNamer
try:
    from imp import *
except:
    pass
reload(reNamer)

============================================================================"""
#
# when start coding 3 empty lines.
#
import maya.OpenMayaUI as omui
from maya import cmds
import string
import pymel.core.datatypes as dt

from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance

class Ui_ReNamer(object):
    def setupUi(self, ReNamer):
        if not ReNamer.objectName():
            ReNamer.setObjectName(u"ReNamer")
        ReNamer.resize(216, 231)
        self.verticalLayout = QVBoxLayout(ReNamer)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.horizontalSpacer = QSpacerItem(195, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer)

        self.label = QLabel(ReNamer)
        self.label.setObjectName(u"label")
        font = QFont()
        font.setFamily(u"\ub9d1\uc740 \uace0\ub515")
        font.setPointSize(11)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label)

        self.horizontalSpacer_2 = QSpacerItem(195, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_2)

        self.nameMathodLine = QLineEdit(ReNamer)
        self.nameMathodLine.setObjectName(u"nameMathodLine")
        self.nameMathodLine.setDragEnabled(True)

        self.verticalLayout.addWidget(self.nameMathodLine)

        self.line = QFrame(ReNamer)
        self.line.setObjectName(u"line")
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line)

        self.label_2 = QLabel(ReNamer)
        self.label_2.setObjectName(u"label_2")
        font1 = QFont()
        font1.setPointSize(7)
        self.label_2.setFont(font1)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_2)

        self.line_2 = QFrame(ReNamer)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.HLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.verticalLayout.addWidget(self.line_2)

        self.label_3 = QLabel(ReNamer)
        self.label_3.setObjectName(u"label_3")
        self.label_3.setFont(font1)
        self.label_3.setAlignment(Qt.AlignCenter)

        self.verticalLayout.addWidget(self.label_3)

        self.horizontalSpacer_3 = QSpacerItem(195, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.verticalLayout.addItem(self.horizontalSpacer_3)


        self.retranslateUi(ReNamer)

        QMetaObject.connectSlotsByName(ReNamer)
    # setupUi

    def retranslateUi(self, ReNamer):
        ReNamer.setWindowTitle(QCoreApplication.translate("ReNamer", u"Form", None))
        self.label.setText(QCoreApplication.translate("ReNamer", u"ReNamer", None))
        self.label_2.setText(QCoreApplication.translate("ReNamer", u"Replace Method : 'Old>>New'\n"
        "MakeName Method : num('#'), alpha('@')\n"
        "Prefix_Suffix Method : pre%SelectedName%suf", None))
        self.label_3.setText(QCoreApplication.translate("ReNamer", u"__AUTHOR__ = 'ms'\n"
        "__UPDATE__ = 20240827", None))
    # retranslateUi



class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_ReNamer()
        self.ui.setupUi(self)

        
        self.ui.nameMathodLine.returnPressed.connect(self.renamer)

    # nameMathodLine get text
    def getText(self):
        return self.ui.nameMathodLine.text()
    
    # Renames and renams the selected object
    def changeName(self, method_, name_):
        old_ = method_.split('>>')[0]
        new_ = method_.split('>>')[-1]
        if not new_:
            new_ = ''
        return name_.replace(old_, new_)

    # padding number
    def padding(self, num_, slot_, check_):
        if check_ == True:
            pad_ = string.ascii_uppercase[num_]
        if check_ == False:
            if not slot_:
                slot_ = 1
            pad_ = str(num_).zfill(slot_)
        return pad_

    # Naming multiple objects followed by numbers in order
    def makeName(self, method_, num_):
        if '#' in method_:
            slot_ = method_.count('#')
            pad_ = str(num_).zfill(slot_)
            name_ = method_.replace(slot_*'#', pad_)
        if '@' in method_:
            pad_ = string.ascii_uppercase[num_-1]
            name_ = method_.replace('@', pad_)
        return name_

    # Add a subnaming before or after the naming of the selected object
    def prefix_suffix(self, method_, name_):
        if method_.split('%')[0]:
            name_ = method_.split('%')[0] + name_
        if method_.split('%')[-1]:
            name_ = name_ + method_.split('%')[-1]
        return name_

    
    # Name changes to the conventions of the name method
    def renamer(self):
        try:
            cmds.undoInfo(openChunk=True)
            list_ = cmds.ls(sl=1,r=1,uid=1)
            nameMathod_ = self.getText()

            for i,item in enumerate(list_):
                name_ = cmds.ls(item)[0].split('|')[-1]
                if '>>' in nameMathod_:
                    name_ = cmds.ls(item)[0].split('|')[-1]
                    name_ = self.changeName(nameMathod_, name_)
                if '#' in nameMathod_ or '@' in nameMathod_:
                    name_ = self.makeName(nameMathod_, i+1)
                if '%' in nameMathod_:
                    name_ = cmds.ls(item)[0].split('|')[-1]
                    name_ = self.prefix_suffix(nameMathod_, name_)
                cmds.rename(cmds.ls(item)[0], name_)
                
        finally:
            cmds.undoInfo(closeChunk=True)


def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)
    

def runWin():
    global myWin
    try:
        myWin.close()
    except:
        pass
    myWin = myUIClass(parent=maya_main_window())
    myWin.show()
runWin()