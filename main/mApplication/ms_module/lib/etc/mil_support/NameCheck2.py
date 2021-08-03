# -*-coding: utf-8-*-
# <Copyright 2020. CheolJin Kim. All right reserved.>
import pymel.core as pm
import maya.OpenMayaUI as omui

# Pyside 泥섎━
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
TitleName = 'MillonVolot_Check Ctrls Tool'


# ===================================
# ?뚯뒪??
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
        self.mayaWindow = shiboken.wrapInstance(long(omui.MQtUtil.mainWindow()), QWidget)
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


    CheckList_Spine = ['BodyIKCtrl',
                     'HipCtrl',
                     'RootCtrl',
                     'SpineFK1Ctrl',
                     'SpineFK2Ctrl']
    CheckList_NeckHead = ['HeadCtrl',
                     'NeckMidCtrl',
                     'NeckCtrl']
    CheckList_Leg = ['LeftAnkleFKCtrl',
                     'LeftBallFKCtrl',
                     'LeftKneeFKCtrl',
                     'LeftLegIKConstCtrl',
                     'LeftLegIKCtrl',
                     'LeftLegIKFKCtrl',
                     'LeftLegPoleVectorCtrl',
                     'LeftLegRootCtrl',
                     'LeftThighFKCtrl']
    CheckList_Clavicle = [ "LeftClavicleCtrl",
                            "LeftClavicleSubCtrl"]
    CheckList_Arm = ['LeftArmIKConstCtrl',
                     'LeftArmIKCtrl',
                     'LeftArmIKFKCtrl',
                     'LeftArmPoleVectorCtrl',
                     'LeftElbowFKCtrl',
                     'LeftShoulderFKCtrl',
                     'LeftWristFKCtrl']
    CheckList_Hand = ['LeftFingerCtrl',
                     'LeftIndex1Ctrl',
                     'LeftIndex2Ctrl',
                     'LeftIndex3Ctrl',
                     'LeftIndex4Ctrl',
                     'LeftIndexIKCtrl',
                     'LeftMiddle1Ctrl',
                     'LeftMiddle2Ctrl',
                     'LeftMiddle3Ctrl',
                     'LeftMiddle4Ctrl',
                     'LeftMiddleIKCtrl',
                     'LeftPinky1Ctrl',
                     'LeftPinky2Ctrl',
                     'LeftPinky3Ctrl',
                     'LeftPinky4Ctrl',
                     'LeftPinkyIKCtrl',
                     'LeftRing1Ctrl',
                     'LeftRing2Ctrl',
                     'LeftRing3Ctrl',
                     'LeftRing4Ctrl',
                     'LeftRingIKCtrl',
                     'LeftThumb1Ctrl',
                     'LeftThumb2Ctrl',
                     'LeftThumb3Ctrl',
                     'LeftThumb4Ctrl',
                     'LeftThumbIKCtrl']
    CheckList_Jaw = ["JawCtrl"]
    CheckList_Teeth = ["UpTeethCtrl",
                        "DnTeethCtrl"]
    CheckList_EyeBrow = ['EyeBrowMidCtrl',
                         'EyeBrowMidGrpCtrl',
                         'LeftEyeBrow1Ctrl',
                         'LeftEyeBrow2Ctrl',
                         'LeftEyeBrow3Ctrl',
                         'LeftEyeBrow4Ctrl',
                         'LeftEyeBrowCtrl']
    CheckList_Eye = ['EyeCtrl',
                     'LeftEyeCtrl',
                     'LeftEyeDn1Ctrl',
                     'LeftEyeDn2Ctrl',
                     'LeftEyeDn3Ctrl',
                     'LeftEyeInCtrl',
                     'LeftEyelidDn1ACtrl',
                     'LeftEyelidDn2ACtrl',
                     'LeftEyelidDn3ACtrl',
                     'LeftEyelidDnMainCtrl',
                     'LeftEyelidInACtrl',
                     'LeftEyelidInMainCtrl',
                     'LeftEyelidOutACtrl',
                     'LeftEyelidOutMainCtrl',
                     'LeftEyelidUp1ACtrl',
                     'LeftEyelidUp3ACtrl',
                     'LeftEyelidUp2ACtrl',
                     'LeftEyelidUpMainCtrl',
                     'LeftEyeOutCtrl',
                     'LeftEyeRootCtrl',
                     'LeftEyeUp1Ctrl',
                     'LeftEyeUp2Ctrl',
                     'LeftEyeUp3Ctrl']
    CheckList_Nose = [  'NoseCtrl',
                        'NoseTopCtrl',                        
                        'NoseMidCtrl',
                        'LeftNoseCtrl',
                        'LeftNoseSideCtrl',
                        'LeftEarRootCtrl',
                        'LeftEarUpCtrl',
                        'LeftEarMidCtrl',
                        'LeftEarDnCtrl'
                        ]
    CheckList_Cheek = ["LeftCheekCtrl",
                       "LeftCheekUpCtrl"]
    CheckList_MouthLip = ['LeftMouthLipCtrl',
                         'LeftMouthLipDn1Ctrl',
                         'LeftMouthLipDn2Ctrl',
                         'LeftMouthLipDn3Ctrl',
                         'LeftMouthLipMainCtrl',
                         'LeftMouthLipUp1Ctrl',
                         'LeftMouthLipUp2Ctrl',
                         'LeftMouthLipUp3Ctrl', 
                         'LeftMouthLipUpperCtrl',
                         'LeftMouthLipSideCtrl',
                         'LeftMouthLipLowerCtrl',   
                         'MouthLipGrpCtrl',                        
                         'MouthLipUpCtrl',
                         'MouthLipDnCtrl',
                         'MouthLipUpMainCtrl',
                         'MouthLipDnMainCtrl' ]
    CheckList_BD = ['BrowBDCtrl',
                    'EyeBDCtrl',
                    'FacialBDCtrl',
                    'MouthBDCtrl',
                    'NoseBDCtrl']
    CheckList_Tongue = ['TongueFK1Ctrl',
                         'TongueFK2Ctrl',
                         'TongueFK3Ctrl',
                         'TongueFK4Ctrl',
                         'TongueFK5Ctrl',
                         'TongueIK1Ctrl',
                         'TongueIK2Ctrl',
                         'TongueIK3Ctrl',
                         'TongueIK4Ctrl',
                         'TongueIK5Ctrl',
                         'TongueIK6Ctrl',
                         'TongueIKCtrl']

    CheckList = CheckList_Spine + CheckList_NeckHead + CheckList_Leg + CheckList_Clavicle + \
                CheckList_Arm + CheckList_Hand + CheckList_Jaw + CheckList_Teeth + CheckList_EyeBrow + \
                CheckList_Eye + CheckList_Nose + CheckList_Cheek + CheckList_MouthLip + CheckList_Tongue + CheckList_BD



    # Right 異붽?
    checkList_Right = []
    for node in CheckList :
        if 'Left' in node :
            checkList_Right.append( node.replace('Left', 'Right') )
            
    return CheckList + checkList_Right


def getNotExistsMyNodes() :

    # 議댁옱 ?щ? 泥댄겕
    notExistsList = []
    for node in getDefaultSkinNodeNameList() :
        if pm.objExists(node) : continue
        notExistsList.append( node )

    # 諛섑솚
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