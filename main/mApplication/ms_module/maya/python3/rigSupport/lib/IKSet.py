import maya.api.OpenMaya as om
from pymel.core import *
from rigSupport.lib import _curve
from rigSupport.lib import _node
from rigSupport.lib import _transform
from rigSupport.lib import _control

try:
    from imp import *
except:
    pass
reload(_curve)
reload(_node)
reload(_transform)
reload(_control)

def jointReLabel(object_):
    for i in object_:
        if i.getAttr('type') != 18:
            i.attr('type').set(18)
        name_ = i.name().split('Jnt')[0]
        i.attr('otherType').set(name_)

def division(number):
    list_ = [0]
    div_ = float(1)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def searchJoint(stJnt, enJnt):
    allP_ = enJnt.getAllParents()
    if stJnt in allP_:
        index = allP_.index(stJnt)
    list_ = [enJnt] + allP_[:index+1]
    list_.reverse()
    return list_

def createCrv(name_, number, joints_):
    crv_ = _curve.object_cv_curve(joints_, dgree_=None)
    rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=0,kcp=0,kt=0,s=number-3,d=3)
    crv_.rename('{0}Crv'.format(name_))
    shape_ = crv_.getShape()
    if crv_.name() != shape_.name():
        shape_.rename(crv_.name())
    return crv_

def object_cv_curve(name_, object_, dgree_=None):
    object_ = ls(object_)
    if not dgree_:
        dgree_ = 1
    trans_list = []
    for i in object_:
        trans, rot = _transform.get_transform(i)
        trans_list.append(trans)
    crv_ = curve(n=name_, d=dgree_, p = trans_list)
    rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=0,kcp=0,kt=0,s=number-3,d=3)
    return crv_

def createNodes(name_, names_, crvs_, divNumList):
    names_ = names_[1:]
    dict_ = {}
    chkNames_ = ['{0}Chk'.format(n) for n in names_]
    dict_['IKSysGrp'] = _node.space_('{0}IKSys'.format(name_))
    dict_['stml'] = _node.multDoubleLinear_('{0}IKStretch'.format(name_))
    dict_['sqml'] = _node.multDoubleLinear_('{0}IKsquash'.format(name_))
    dict_['ba'] = [_node.blendTwoAttr_(n) for n in names_]
    dict_['md'] = [_node.multiplyDivide_('{0}Normalize'.format(n)) for n in names_]
    dict_['md1'] = [_node.multiplyDivide_('{0}PW'.format(n)) for n in names_]
    dict_['md2'] = [_node.multiplyDivide_('{0}Squash'.format(n)) for n in names_]
    dict_['ml'] = [_node.multDoubleLinear_(n) for n in names_]
    dict_['db'] = [_node.distancBetween_(n) for n in names_]
    dict_['chkdb'] = [_node.distancBetween_(n) for n in chkNames_]
    dict_['pc'] = [_node.pointOnCurveInfo_(crvs_[0]) for i in divNumList]
    dict_['chkpc'] = [_node.pointOnCurveInfo_(crvs_[1]) for i in divNumList]
    return dict_
    
def IKNodeConnection(dict_, crvs_, joints_, divNumList):
    
    for p,pc in enumerate(dict_['pc']):
        pc.attr('parameter').set(divNumList[p])
        dict_['chkpc'][p].attr('parameter').set(divNumList[p])
        if pc in dict_['pc'][:-1]:
            pc.position >> dict_['db'][p].point1
            dict_['chkpc'][p].position >> dict_['chkdb'][p].point1
            dict_['md'][p].attr('operation').set(2)
            dict_['md1'][p].attr('operation').set(3)
            dict_['md2'][p].attr('operation').set(2)
            dict_['md2'][p].attr('i1x').set(1)
            dict_['db'][p].distance >> dict_['ba'][p].input[1]
            dict_['stml'].o >> dict_['ba'][p].attributesBlender
            dict_['sqml'].o >> dict_['md1'][p].i2x
            dict_['ba'][p].o >> dict_['md'][p].i1x
            dict_['md'][p].ox >> dict_['ml'][p].i1
            dict_['md'][p].ox >> dict_['md1'][p].i1x
            dict_['md1'][p].ox >> dict_['md2'][p].i2x
            dict_['chkdb'][p].distance >> dict_['ba'][p].input[0]
            dict_['chkdb'][p].distance >> dict_['md'][p].i2x
        if p>0:
            pc.position >> dict_['db'][p-1].point2
            dict_['chkpc'][p].position >> dict_['chkdb'][p-1].point2
    
    dict_['md2'][0].ox >> joints_[0].sy
    dict_['md2'][0].ox >> joints_[0].sz
    for i,db in enumerate(dict_['db']):
        dist_ = db.getAttr('distance')
        dict_['ml'][i].attr('i2').set(dist_)
        dict_['ml'][i].o >> joints_[1:][i].tx
        dict_['md2'][i].ox >> joints_[1:][i].sy
        dict_['md2'][i].ox >> joints_[1:][i].sz
    
    dict_['stml'].attr('i1').set(10)
    dict_['stml'].attr('i2').set(0.1)
    dict_['sqml'].attr('i1').set(10)
    dict_['sqml'].attr('i2').set(0.1)


sel = ls(sl=1,r=1,fl=1)
name_ = sel[0].split('1Jnt')[0]
stJnt, enJnt, = sel[0], sel[1]

joints_ = searchJoint(stJnt, enJnt)
names_ = [jnt.name().split('Jnt')[0] for jnt in joints_]

number = int(len(joints_))
divNumList = division(number-1)

crvs_ = [object_cv_curve(n, joints_) for n in [name_, '{0}Chk'.format(name_)]]

nodeDict_ = createNodes(name_, names_, crvs_, divNumList)
IKNodeConnection(nodeDict_, crvs_, joints_, divNumList)
[parent(crv, nodeDict_['IKSysGrp']) for crv in crvs_]
