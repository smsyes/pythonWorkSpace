# -*-coding: utf-8-*-
# <Copyright 2020. CheolJin Kim. All right reserved.>
import pymel.core as pm
import maya.OpenMayaUI as omui

# Pyside 처리
pySide2Mode = int(pm.about(version=True)) > 2016
if pySide2Mode:
    from PySide2.QtGui import *
    from PySide2.QtWidgets import *
    from PySide2 import QtCore
    import shiboken2 as shiboken

else:
    from PySide.QtGui import *
    from PySide import QtCore
    import shiboken

# ===================================
# Opener
# ===================================
TitleName = 'MillonVolot_Check BlendShape Tool'


# ===================================
# 소스들
# ===================================


def addFuntion(customLayout):
    def CheckBtnCommand(evt=None):
        # set All Green for LineEidt, Buttons
        for nodeName in getDefaultSkinNodeNameList():
            ColorChangeLineEdit_Green(customLayout.LineEidtDict[nodeName])

        customLayout.CheckBtn.setStyleSheet(
            "color: rgb(255, 255, 255); background-color:{}".format(get_GreenColor()))

        # Set Rad if notExists Nodes
        notExistsMyNodes = getNotExistsMyNodes()
        if notExistsMyNodes :
            # Check
            for nodeName in notExistsMyNodes :
                ColorChangeLineEdit_Red( customLayout.LineEidtDict[nodeName] )

            customLayout.CheckBtn.setStyleSheet(
                "color: rgb(255, 255, 255); background-color:{}".format(get_RedColor()))

        else :
            message ='All Nodes Exists.'
            pm.confirmDialog(title='Confirm', message=message, button=['Okay'])

    customLayout.CheckBtn.clicked.connect(CheckBtnCommand)


class customLayout():

    def __init__(self, widget):
        self.buildLayout(widget)

    def buildLayout(self, widget):
        # ================================================
        # MainWindow
        # ================================================

        self.TopLayout = QGridLayout()
        self.MainLayout = QVBoxLayout()
        self.TopLayout.addLayout(self.MainLayout, 0, 0, 1, 1)
        widget.setLayout(self.TopLayout)

        # ================================================
        # Button Layout
        # ================================================
        text = "<font color=cyan size=4> {text} </font>".format(text=TitleName)
        self.TitleLabel = QLabel(text)
        self.MainLayout.addWidget(self.TitleLabel)
        Divider(self.MainLayout)

        self.CheckBtn = QPushButton('Check')
        self.MainLayout.addWidget(self.CheckBtn)

        # ================================================
        # Create LineEidt
        # ================================================
        ScrollArea = QScrollArea()
        ScrollArea.setWidgetResizable(True)
        self.MainLayout.addWidget(ScrollArea)

        ScrollAreaWidget = QWidget()
        ScrollArea.setWidget(ScrollAreaWidget)
        self.LineEidtLayout = QVBoxLayout()
        ScrollAreaWidget.setLayout(self.LineEidtLayout)

        self.LineEidtDict = {}
        for name in getDefaultSkinNodeNameList() :
            self.LineEidtDict[name] = CreateLineEidtGrp(label=name, text=name, parentLayout=self.LineEidtLayout)


# ================================================
# Tools
# ================================================
class MayaBaseWidget():
    def __init__(self, title='WindowTitleName', width=500, height=370):
        self.mayaWindow = shiboken.wrapInstance(int(omui.MQtUtil.mainWindow()), QWidget)
        self.mainWidget = QWidget(self.mayaWindow)
        self.mainWidget.setWindowFlags(QtCore.Qt.Window)
        self.mainWidget.resize(width, height)
        self.mainWidget.setWindowTitle(title)

    def show(self):
        self.mainWidget.show()

    def getWindow(self):
        return self.mainWidget

    def close(self):
        self.mainWidget.close()
        self.mainWidget.deleteLater()
def Divider(parentLayout):
    line = QFrame()
    line.setFrameShape(QFrame.HLine)
    line.setFrameShadow(QFrame.Sunken)
    parentLayout.addWidget(line)
    return line

def getDefaultSkinNodeNameList():


    Brow= ["Up_L",
            "Down_L",
            "Angry_L",
            "Sad_L",
            "Squeeze_L"]
    Eye = ["BlinkUp_L", 
            "BlinkDown_L"]
    Mouth = ["A",
            "E",
            "I",
            "O",
            "U",
            "F",
            "M",
            "Big_A",
            "Smile_L",
            "Sad_L",
            "CheekOut_L",
            "CheekIn_L",
            "ScaleOut_L",
            "ScaleIn_L",
            "CurlOut_U",
            "CurlIn_U",
            "LipOut",
            "LipIn"]
    Nose = ["Nose_L"]

    Brow_ = [':'.join(['Brow',i]) for i in Brow]
    Eye_ = [':'.join(['Eye',i]) for i in Eye]
    Mouth_ = [':'.join(['Mouth',i]) for i in Mouth]
    Nose_ = [':'.join(['Nose',i]) for i in Nose]

    CheckList = Brow_ +\
                Eye_ +\
                Mouth_ +\
                Nose_


    # Right 추가
    checkList_Right = []
    for node in CheckList :
        if '_L' in node :
            checkList_Right.append( node.replace('_L', '_R') )
        if '_U' in node :
            checkList_Right.append( node.replace('_U', '_D') )

    return CheckList + checkList_Right


def getTarget():
    dags_ = pm.ls(ap=1, typ='blendShape')
    
    BSDict = {}
    Targets = []
    
    for d in dags_:
        if 'Brow_BS' in d.name():
            BSDict['Brow'] = d
        if 'Eye_BS' in d.name():
            BSDict['Eye'] = d
        if 'Mouth_BS' in d.name():
            BSDict['Mouth'] = d
        if 'Nose_BS' in d.name():
            BSDict['Nose'] = d
    
    for i in BSDict.keys():
        wi_ = BSDict[i].weightIndexList()
        for w in wi_:
            t_ = BSDict[i].attr('w')[w].getAlias()
            t_ = ':'.join([i,t_])
            Targets.append(t_)
    return Targets

def getNotExistsMyNodes() :

    # 존재 여부 체크
    target_ = getTarget()
    notExistsList = []
    for node in getDefaultSkinNodeNameList() :
        if node in target_ : continue
        notExistsList.append( node )

    # 반환
    return notExistsList

def CreateLineEidtGrp(label, text, parentLayout):
    Layout = QHBoxLayout()
    Label = QLabel(label)
    Layout.addWidget(Label)
    LineEdit = QLineEdit()
    LineEdit.setText(text)
    LineEdit.setReadOnly(1)
    Layout.addWidget(LineEdit)
    parentLayout.addLayout(Layout)

    return LineEdit

def layout_widgets(layout):
    """Get widgets contained in layout"""
    return [layout.itemAt(i).widget() for i in range(layout.count())]

def ColorChangeLineEdit_Green(LineEidt):
    FrontPart = \
    """
    QLineEdit {
    border: 2px solid rgb(63, 63, 63);
    color: rgb(0, 0, 0);
    background-color:
    """
    BackPart = ';}'

    data = '{FrontPart}{ColorData}{BackPart}'.format(FrontPart=FrontPart,
                                                     ColorData=get_GreenColor(),
                                                     BackPart=BackPart)
                                                     
    LineEidt.setStyleSheet(data)
    print(data)


def ColorChangeLineEdit_Yellow(LineEidt):
    FrontPart = \
    """
    QLineEdit {
    border: 2px solid rgb(63, 63, 63);
    color: rgb(0, 0, 0);
    background-color:
    """
    BackPart = ';}'

    data = '{FrontPart}{ColorData}{BackPart}'.format(FrontPart=FrontPart,
                                                     ColorData=get_YellowColor(),
                                                     BackPart=BackPart)
    LineEidt.setStyleSheet(data)


def ColorChangeLineEdit_Red(LineEidt):
    FrontPart =\
    """
    QLineEdit {
    border: 2px solid rgb(63, 63, 63);
    color: rgb(255, 255, 255);
    background-color:
    """
    BackPart = ';}'

    data ='{FrontPart}{ColorData}{BackPart}'.format(FrontPart= FrontPart,
                                                    ColorData=get_RedColor(),
                                                    BackPart = BackPart)
    LineEidt.setStyleSheet(data)

def get_RedColor() :
    return 'rgb(223, 70, 81)'

def get_GreenColor() :
    return 'rgb(70, 223, 145)'

def get_YellowColor() :
    return 'rgb(221, 223, 70)'

try: baseWin.close()
except: pass
baseWin = MayaBaseWidget(title=TitleName, width=450, height=500)
MainLayout = customLayout(baseWin.getWindow())
addFuntion(MainLayout)
baseWin.show()
