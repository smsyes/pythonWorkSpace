# -*- coding: utf-8 -*-
"""============================================================================
linearStretch setup

__AUTHOR__ = 'SUNGSEO'
__UPDATE__ = 20220330

:Example:
Pakage is linearJoint.pyc

import linearJoint
relaod (linearJoint)
# Run after selecting the first joint.
sel = ls(sl=1,r=1,fl=1)
crvs_ = linearJoint_('test',sel,num_=5,axis='x')

============================================================================"""
import pymel.core as pm
from collections import OrderedDict

def pc_(name_,crv,list_):
    crvShape = crv.getShape()
    pc = list(map(lambda a: pm.createNode('pointOnCurveInfo',
    n='{0}{1}PC'.format(name_,a)) ,range(len(list_))))
    list(map(lambda a: crvShape.ws >> a.ic ,pc))
    return pc

def db_(name_,list_):
    return list(map(lambda a: pm.shadingNode('distanceBetween', 
    au=1, n='{0}{1}DB'.format(name_,a)) ,range(len(list_))))

def ml_(name_,list_):
    return list(map(lambda a: pm.shadingNode('multDoubleLinear', 
    au=1, n='{0}{1}ML'.format(name_,a)) ,range(len(list_))))

def md_(name_,list_):
    return list(map(lambda a: pm.shadingNode('multiplyDivide', 
    au=1, n='{0}{1}MD'.format(name_,a)) ,range(len(list_))))

def division(number,divNum):
    list_ = [0]
    div_ = float(divNum)/float(number)
    for i in range(number):
        i=i+1
        list_.append(i*div_)
    return list_

def get_trans(object_):
    return object_.getMatrix(worldSpace=True)[-1][:-1]

def object_cv_curve(name_, object_):
    object_ = pm.ls(object_)  
    trans_list = list(map(lambda i: get_trans(i) ,object_))
    crv_ = pm.curve(n='{}Crv'.format(name_), d=1, p = trans_list)
    pm.rebuildCurve(crv_,ch=0,rpo=1,rt=0,end=1,kr=0,
                    kcp=0,kep=1,kt=1,s=1,d=1)
    return crv_

def rebuildCrv_(crv_,object_):
    number = int(len(object_))
    pm.rebuildCurve(crv_,ch=1,rpo=1,rt=0,end=1,kr=0,
                    kcp=0,kep=1,kt=1,s=number-3,d=3)

def space_(name_, suffix_=None, parent_=None):
    if not suffix_:
        suffix_ = 'Grp'      
    space_ = pm.createNode('transform',
                        n='{0}{1}'.format(name_,suffix_),
                        p=parent_)
    return space_

def length(v0, v1):
    """�� Vector �ъ씠�� 嫄곕━

    Arguments:
        v0, v1 (Vector) : length媛� 援ы븷 �� Vector

    Returns:
        position : length
    """
    v = v1 - v0
    return v.length()

def joint_insert(joint_, name_, pos_):
    """joint insert

    Arguments:
        joint_ (joint) : insert �� joint
        name_ (string) : �앹꽦�� 議곗씤�� Name
        pos_ (position) : �꾩튂媛�

    Returns:
        joint : insert�� joint
    """
    if joint_.type() == 'joint':
        JNT = joint_.insert()
        pm.joint(JNT, n=name_, e=True, co=True, p=pos_)
        return pm.PyNode(name_)

def linear_spacing_joint(joint_, num, axis='x'):
    """媛�닔�� �곕씪 鍮꾩쑉 議곗젙�섏뿬 議곗씤�� �쇱썙�ｊ린.

    Arguments:
        joint_ (joint) : insert �� joint
        num (int) : 異붽��� 議곗씤�� 媛�닔
        axis (position) : joint Axis

    Returns:
        insertList : insert�� joints
    """
    joints = [joint_, joint_.getChildren()[0]]
    stJoint = joints[0]
    stOtherType = stJoint.otherType.get()
    stSide = stJoint.side.get()
    enJoint = joints[-1]
    stTrans_= get_trans(stJoint)
    enTrans_= get_trans(enJoint)
    length_ = length(stTrans_, enTrans_)
    divValue = length_/(num+1)

    if axis:
        if axis=='x':
            value = (divValue,0,0)
        if axis=='y':
            value = (0,divValue,0)
        if axis=='z':
            value = (0,0,divValue)
        if axis=='-x':
            value = (-1*divValue,0,0)
        if axis=='-y':
            value = (0,-1*divValue,0)
        if axis=='-z':
            value = (0,0,-1*divValue)
    else:
        value = (divValue,0,0)
    
    insertList = [stJoint]
    for i in range(num):
        localspace = space_(stJoint.name(), parent_=insertList[i])
        localspace.t.set(value)
        name_ = '{0}{1}{2}'.format(stOtherType, i+1, 'Jnt')
        pos_ = get_trans(localspace)
        JNT = joint_insert(insertList[i], name_, pos_)
        JNT.attr('type').set(18)
        JNT.otherType.set('{0}{1}'.format(stOtherType, i+1))
        JNT.side.set(stSide)
        pm.delete(localspace)
        insertList.append(JNT)
    return insertList

def getChildren_(object_, type_=None):
    """Get the childrens from top object

    Arguments:
        object_ (node): transform node
        type_ (type): node type

    Returns:
        list : childrens list

    """
    object_ = pm.PyNode(object_)
    if not type_:
        type_ = 'transform'
    child_ = object_.listRelatives(ad=1, c=1, typ=type_)
    child_ = child_ + [object_]
    child_.reverse()
    return child_

def dupJoint(joints,type_):
    """�좏깮�� 議곗씤�몃뱾 蹂듭궗 type_由щ꽕��.

    Arguments:
        joints (list) : 蹂듭궗�� 議곗씤�몃뱾
        type_ (string) : 'FK' or 'IK' or 'Drv'

    Returns:
        Jnts : 蹂듭궗�� chain援ъ“ 議곗씤��

    """
    Jnts = []
    for j in joints:
        dup = pm.duplicate(j,po=1)
        pm.parent(dup[0],w=1)
        pm.rename(dup,'{0}{1}Jnt'.format(j.name(),type_))
        Jnts.append(dup[0])
    hierarchy_(Jnts)
    return Jnts    

def hierarchy_(object_):
    """�좏깮�� �ㅻ툕�앺듃 �쒖꽌�濡� hierarchy援ъ“濡� 蹂��.

    Arguments:
        object_ (list): hierarchy 援ъ“濡� 留뚮뱾 �ㅻ툕�앺듃��

    Returns:
        None : None

    """
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])

def linearJoint_(baseName_,object_,num_=3,axis_='x'):
    crvs = []
    list_ = pm.ls(object_[0],object_[0].getChildren()[0])
    divNum = num_+1
    joint_ = dupJoint(list_,'Arc')
    joint_[-1].jointOrient.set(0,0,0)
    joint_[-1].r.set(0,0,0)
    linear_spacing_joint(joint_[0], num_, axis=axis_)
    chain_ = getChildren_(joint_[0], type_='joint')
    md = md_(baseName_,range(divNum))
    list(map(lambda i: i.operation.set(2) ,md))
    ml = ml_(baseName_,range(divNum))
    for type_ in ['IK','IKChk']:
        name_ = '{0}{1}'.format(baseName_,type_)
        crv = object_cv_curve(name_, chain_)
        crvs.append(crv)
        div = division(divNum,1)
        pc = pc_(name_,crv,div)
        list(map(lambda i: pc[i].turnOnPercentage.set(1) ,range(len(div))))
        list(map(lambda i: pc[i].parameter.set(div[i]) ,range(len(div))))
        db = db_(name_,range(divNum))
        list(map(lambda i: pc[i].position >> db[i].point1 ,range(divNum)))
        list(map(lambda i: pc[i+1].position >> db[i].point2 ,range(divNum)))
        if type_ == 'IK':
            list(map(lambda i: db[i].distance >> md[i].i1x ,range(divNum)))
            list(map(lambda i: db[i].distance >> md[i].i2y ,range(divNum)))
        else:
            list(map(lambda i: db[i].distance >> md[i].i1y ,range(divNum)))
            list(map(lambda i: db[i].distance >> md[i].i2x ,range(divNum)))
            if '-' in axis_:
                mult = -1
            else:
                mult = 1
            list(map(lambda i: ml[i].i2.set(db[i].distance.get()*mult) ,
            range(divNum)))
    list(map(lambda i: md[i].ox >> ml[i].i1 ,range(divNum)))
    list(map(lambda i: ml[i].o >> chain_[i+1].tx ,range(divNum)))
    return chain_,crvs
