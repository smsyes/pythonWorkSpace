# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.

__AUTHOR__ = 'minsung'
__UPDATE__ = 20211122

:Example:
import IKStSqSet_01
reload(IKStSqSet_01)

============================================================================"""
#
# when start coding 3 empty lines.
#
import maya.OpenMayaUI as omui
import maya.OpenMaya as om
import pymel.core.datatypes as dt
from pymel.core import *
from PySide2.QtCore import * 
from PySide2.QtGui import * 
from PySide2.QtWidgets import *
from PySide2 import __version__
from shiboken2 import wrapInstance

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(265, 118)
        self.verticalLayout = QVBoxLayout(Form)
        self.verticalLayout.setObjectName("verticalLayout")
        self.label_3 = QLabel(Form)
        font = QFont()
        font.setPointSize(12)
        font.setWeight(75)
        font.setBold(True)
        self.label_3.setFont(font)
        self.label_3.setLineWidth(1)
        self.label_3.setAlignment(Qt.AlignCenter)
        self.label_3.setObjectName("label_3")
        self.verticalLayout.addWidget(self.label_3)
        self.line = QFrame(Form)
        self.line.setFrameShape(QFrame.HLine)
        self.line.setFrameShadow(QFrame.Sunken)
        self.line.setObjectName("line")
        self.verticalLayout.addWidget(self.line)
        self.label = QLabel(Form)
        self.label.setAlignment(Qt.AlignCenter)
        self.label.setObjectName("label")
        self.verticalLayout.addWidget(self.label)
        self.baseNameLE = QLineEdit(Form)
        self.baseNameLE.setObjectName("baseNameLE")
        self.verticalLayout.addWidget(self.baseNameLE)
        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.label_2 = QLabel(Form)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout.addWidget(self.label_2)
        self.NumSP = QSpinBox(Form)
        self.NumSP.setObjectName("NumSP")
        self.horizontalLayout.addWidget(self.NumSP)
        self.SetupPB = QPushButton(Form)
        self.SetupPB.setObjectName("SetupPB")
        self.horizontalLayout.addWidget(self.SetupPB)
        self.verticalLayout.addLayout(self.horizontalLayout)

        self.retranslateUi(Form)
        QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        Form.setWindowTitle(QApplication.translate("Form", "Form", None, -1))
        self.label_3.setText(QApplication.translate("Form", "IK Setup Tool", None, -1))
        self.label.setText(QApplication.translate("Form", "# Choose the first and last IK joint and do it.", None, -1))
        self.label_2.setText(QApplication.translate("Form", "IK Number :", None, -1))
        self.SetupPB.setText(QApplication.translate("Form", "Setting", None, -1))

class myUIClass(QWidget):
    def __init__(self, *args, **kwargs):
        super(myUIClass, self).__init__(*args, **kwargs)
        self.setWindowFlags(Qt.Window)
        self.ui = Ui_Form()
        self.ui.setupUi(self)

        self.ui.SetupPB.clicked.connect(self.setup)

    def setup(self):
        self.num_ = self.getIKNum()
        self.baseName = self.getBaseName()
        IKSetting(self.baseName, self.num_)
    
    def getIKNum(self):
        return self.ui.NumSP.value()
    
    def getBaseName(self):
        return self.ui.baseNameLE.text()
    
def division(num_):
    number = num_-1
    list_ = [0]
    div_ = 1/number
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def distancBetween_(name_):
    return shadingNode('distanceBetween', au=1, n='{}DB'.format(name_))

def blendTwoAttr_(name_):
    return shadingNode('blendTwoAttr', au=1, n='{}BA'.format(name_))

def multiplyDivide_(name_):
    return shadingNode('multiplyDivide', au=1, n='{}MD'.format(name_))

def multDoubleLinear_(name_):
    return shadingNode('multDoubleLinear', au=1, n='{}MDL'.format(name_))

def pointOnCurveInfo_(curve_):
    _shape = curve_.getShape()
    _node = createNode('pointOnCurveInfo', n='{}PC'.format(curve_.name()))
    _shape.ws >> _node.ic
    return _node

def space_(name_, parent_=None):
    space_ = createNode('transform',
                        n='{}Grp'.format(name_),
                        p=parent_)
    return space_

def offset_(object_, num_=None):
    object_ = PyNode(object_)
    _name = object_.name()
    type_ = ['Off', 'Spc']
    offsetList = []
    for i in range(num_):
        if i > 0:
            _type = 1
            _parent = offset
        else:
            _type = 0
            _parent = object_
        join_name = ''.join([_name, type_[_type]])
        offset = space_(join_name, _parent)
        if i==0:
            if object_.getParent():
                _parent = object_.getParent()
                parent(offset, _parent)
            else:
                parent(offset, w=1)
        offsetList.append(offset)
    parent(object_, offset)
    return offsetList[0]

def divide_in_two(object_):
    divideNum = int(len(object_)/2)
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def get_transform(object_):
    _name = object_.name()
    trans = xform(_name, q=1, ws=1, rp=1 )
    rot = xform(_name, q=1, ws=1, ro=1 )
    return trans, rot

def set_trans_xform(object_, trans):
    xform(object_, r = 1, t = trans)

def set_rot_xform(object_, rot):
    xform(object_, r = 1, ro = rot)

def set_transform_(object_):
    items, targets = divide_in_two(object_)
    for i,item in enumerate(items):
        pos, rot = get_transform(item)
        set_trans_xform(targets[i], pos)
        set_rot_xform(targets[i], rot)

def matrixList_(matrix_):
    """Get the list from matrix

    Arguments:
        matrix_ (matrix): The input Matrix.

    Returns:
        list : matrix array list

    """
    list_=[]
    array_ = matrix_.get()
    for i,a in enumerate(array_):
        for j in a:
            list_.append(j)
    return list_

def setMatrixFromList(list_):

    matrix_ = dt.Matrix()
    data_ = matrixList_(matrix_)
    data_[0] = list_[0]
    data_[1] = list_[1]
    data_[2] = list_[2]
    data_[4] = list_[3]
    data_[5] = list_[4]
    data_[6] = list_[5]
    data_[8] = list_[6]
    data_[9] = list_[7]
    data_[10] = list_[8]
    data_[12] = list_[9]
    data_[13] = list_[10]
    data_[14] = list_[11]

    om.MScriptUtil.createMatrixFromList(data_, matrix_)

    return matrix_

def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]

def object_cv_curve(object_, dgree_=None):
    object_ = ls(object_)
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = get_transform(i)
        trans_list.append(trans)
    crv_ = curve(d=dgree_, p = trans_list)
    return crv_

def createIKCurves(baseName, joints_, type_):
    curves_ = []
    for i in type_:
        crv_ = object_cv_curve(joints_, dgree_=None)
        crv_.rename('{0}{1}Crv'.format(baseName,i))
        rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=2,kcp=0,kt=1,s=0,d=3)
        curves_.append(crv_)
    return curves_

def getCurveParamTransform(param, curve_):
    matrixList = []
    poci_ = pointOnCurveInfo_(curve_)
    poci_.attr('turnOnPercentage').set(1)
    poci_.attr('parameter').set(param)
    vecX = poci_.getAttr('normalizedTangent')
    normal = poci_.getAttr('normalizedNormal')
    tangent = poci_.getAttr('normalizedTangent')
    position = poci_.getAttr('position')
    crossY = om.MVector(normal)^om.MVector(tangent)
    crossZ = crossY^om.MVector(normal)
    vecY = [y for y in crossY]
    vecZ = [z for z in crossZ]
    matrixList.extend(vecX)
    matrixList.extend(vecY)
    matrixList.extend(vecZ)
    matrixList.extend(position)
    matrix_ = setMatrixFromList(matrixList)
    delete(poci_)
    return matrix_

def paramAtJoint(baseName, num_, curve_):
    divNum = division(num_)
    jnts_ = []
    for i,d in enumerate(divNum):
        getMatrix_ = getCurveParamTransform(d, curve_)
        jnt_ = joint(n='{0}{1}IKBindJnt'.format(baseName, i))
        jnt_.setMatrix(getMatrix_)
        jnts_.append(jnt_)
        select(cl=1)
    return jnts_

def shape_name_match(curve_):
    shape_ = curve_.getShape()
    shape_.rename(curve_.name()+'Shape')

def crvShape_(type_):
    shape_dic = {}
    if type_=='circle':
        shape_dic['circle'] = [1, [(0,0,1),(0.382683,0,0.92388),
                                (0.707107,0,0.707107),(0.92388,0,0.382683),
                                (1,0,0),(0.92388,0,-0.382683),
                                (0.707107,0,-0.707107),(0.382683,0,-0.92388),
                                (0,0,-1),(-0.382683,0,-0.92388),
                                (-0.707107,0,-0.707107),(-0.92388,0,-0.382683),
                                (-1,0,0),(-0.92388,0,0.382683),
                                (-0.707107,0,0.707107),(-0.382683,0,0.92388),
                                (0,0,1)],[0,1,2,3,4,5,6,7,8,9,
                                10,11,12,13,14,15,16]]
    crv_ = curve(d = shape_dic[type_][0], 
                p = shape_dic[type_][1], 
                k = shape_dic[type_][2])
    shape_name_match(crv_)
    return crv_

def control_(object_, type_):
    CTLList = []
    for i,obj in enumerate(object_):
        CTL_ = crvShape_(type_)
        CTL_ = PyNode(CTL_)
        set_transform_(ls(obj, CTL_))
        CTLList.append(CTL_)
    return CTLList

def createIKCtrl(names_, object_):
    grp_ = []
    ctrls_ = control_(object_, 'circle')
    for i,ctrl in enumerate(ctrls_):
        ctrl.rename('{0}IKCtrl'.format(names_[i]))
        grp_.append(offset_(ctrl, num_=1))
    return grp_, ctrls_

def searchJoint(stJnt, enJnt):
    allP_ = enJnt.getAllParents()
    if stJnt in allP_:
        index = allP_.index(stJnt)
    list_ = [enJnt] + allP_[:index+1]
    list_.reverse()
    return list_

def splName(object_, spl, idx):
    names_ = []
    for i in object_:
        if spl in i.name():
            names_.append(i.name().split(spl)[idx])
    return names_    

def IKSetting(baseName, num_):
    """Get the childrens from top object

    Arguments:
        num (int): ik bind joint and controller number
        baseName (string): base name

    Returns:
        build : ik (stretch and squash) setting

    """
    # setting value setting
    sel = ls(sl=1,r=1)
    joints_ = searchJoint(sel[0], sel[1])
    names_ = splName(joints_[:-1], 'Jnt', 0)
    crvType_ = ['IK','IKChk']
    IKSets = sets(n='{0}IKSets'.format(baseName))

    # IK Nodes Configuration
    IKSysGrp = space_('{0}IKSys'.format(baseName))
    IKCtrlGrp = space_('{0}IKCtrl'.format(baseName))
    IKCurves = createIKCurves(baseName, joints_, crvType_)
    IKJnts_ = paramAtJoint(baseName, num_, IKCurves[0])
    IKJntsName_ = splName(IKJnts_, 'BindJnt', 0)
    CtrlGrps, Ctrl = createIKCtrl(IKJntsName_, IKJnts_)
    [parent(jnt, Ctrl[j]) for j,jnt in enumerate(IKJnts_)]
    [parent(crv, IKSysGrp) for crv in IKCurves]
    [parent(grp, IKCtrlGrp) for grp in CtrlGrps]

    sets(IKSets, e=1, add=[IKSysGrp,IKCtrlGrp,IKCurves,IKJnts_,CtrlGrps,Ctrl])

    stml_ = multDoubleLinear_('{0}IKStretch'.format(baseName))
    sqml_ = multDoubleLinear_('{0}IKsquash'.format(baseName))
    ba_ = [blendTwoAttr_(n) for n in names_]
    md_ = [multiplyDivide_('{0}Normalize'.format(n)) for n in names_]
    md1_ = [multiplyDivide_('{0}PW'.format(n)) for n in names_]
    md2_ = [multiplyDivide_('{0}Squash'.format(n)) for n in names_]
    ml_ = [multDoubleLinear_(n) for n in names_]
    dbs_ = []
    pocis_ = []
    for c,crv in enumerate(IKCurves):
        shape_ = crv.getShape()
        db_ = []
        poci_ = []
        dbs_.append(db_)
        pocis_.append(poci_)
        for j,jnt in enumerate(joints_):
            pos_ = get_trans(jnt)
            cpos = shape_.closestPoint(pos_)
            param_ = shape_.getParamAtPoint(cpos, space='preTransform')            
            pc_ = pointOnCurveInfo_(crv)
            pc_.attr('parameter').set(param_)
            poci_.append(pc_)
            if j<int(len(joints_)-1):
                name2_ = '{0}{1}'.format(crvType_[c], names_[j])
                db_.append(distancBetween_(name2_))

    sets(IKSets, e=1, add=[stml_,sqml_,ba_,md_,md1_,md2_,ml_,
                        dbs_[0],dbs_[1],pocis_[0],pocis_[1]])

    sik_ = ikHandle(n='{}IKH'.format(baseName), 
                    sj=joints_[0], 
                    ee=joints_[-1], 
                    c=IKCurves[0], 
                    sol='ikSplineSolver', 
                    ccv=0, 
                    pcv=0)
    parent(sik_[0], IKSysGrp)

    sets(IKSets, e=1, add=sik_)

    # Connecting IK Nodes
    for c,crv in enumerate(IKCurves):
        db_ = dbs_[c]
        poci_ = pocis_[c]
        for j,jnt in enumerate(joints_):
            if j<int(len(joints_)-1):
                poci_[j].position >> db_[j].point1
                if c==0:
                    md_[j].attr('operation').set(2)
                    md1_[j].attr('operation').set(3)
                    md2_[j].attr('operation').set(2)
                    md2_[j].attr('i1x').set(1)
                    db_[j].distance >> ba_[j].input[1]
                    stml_.o >> ba_[j].attributesBlender
                    sqml_.o >> md1_[j].i2x
                    ba_[j].o >> md_[j].i1x
                    md_[j].ox >> ml_[j].i1
                    md_[j].ox >> md1_[j].i1x
                    md1_[j].ox >> md2_[j].i2x
                if c==1:
                    db_[j].distance >> ba_[j].input[0]
                    db_[j].distance >> md_[j].i2x
            if j>0:
                poci_[j].position >> db_[j-1].point2

    md2_[0].ox >> joints_[0].sy
    md2_[0].ox >> joints_[0].sz
    for i,db in enumerate(dbs_[0]):
        dist_ = db.getAttr('distance')
        ml_[i].attr('i2').set(dist_)
        ml_[i].o >> joints_[1:][i].tx
        md2_[i].ox >> joints_[1:][i].sy
        md2_[i].ox >> joints_[1:][i].sz

    stml_.attr('i1').set(10)
    stml_.attr('i2').set(0.1)
    sqml_.attr('i1').set(10)
    sqml_.attr('i2').set(0.1)
    addAttr(sik_[0], ln="Stretch",at='double',min=0,max=10,k=1)
    addAttr(sik_[0], ln="Squash",at='double',min=0,max=10,k=1)
    sik_[0].attr('dTwistControlEnable').set(1)
    sik_[0].attr('dWorldUpType').set(4)
    Ctrl[0].wm >> sik_[0].dWorldUpMatrix
    Ctrl[-1].wm >> sik_[0].dWorldUpMatrixEnd
    sik_[0].Stretch >> stml_.i1
    sik_[0].Squash >> sqml_.i1

def maya_main_window():
    main_window_ptr = omui.MQtUtil.mainWindow()
    return wrapInstance(int(main_window_ptr), QWidget)


def runWin():
    global MainWindow
    try:
        MainWindow.close()
    except:
        pass
    MainWindow = myUIClass(parent=maya_main_window())
    MainWindow.show()

runWin()