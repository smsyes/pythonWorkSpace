import pymel.core as pm
from collections import OrderedDict
from rigSupport.lib import QuatMatrixConst as QM
try:
    from imp import *
except:
    pass
reload(QM)

def getShape_(key):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string

    Returns:
        dictionary : Curve information.

    """
    shapeDict = OrderedDict()
    shapeDict['square'] = 1, [(-1,0,1),(-1,0,-1),(1,0,-1),(1,0,1),
                        (-1,0,1)], [0,1,2,3,4]
    shapeDict['circle'] = 1, [(0,0,1),(0.382683,0,0.92388),
                        (0.707107,0,0.707107),(0.92388,0,0.382683),
                        (1,0,0),(0.92388,0,-0.382683),
                        (0.707107,0,-0.707107),(0.382683,0,-0.92388),
                        (0,0,-1),(-0.382683,0,-0.92388),
                        (-0.707107,0,-0.707107),(-0.92388,0,-0.382683),
                        (-1,0,0),(-0.92388,0,0.382683),
                        (-0.707107,0,0.707107),(-0.382683,0,0.92388),
                        (0,0,1)],[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,
                        15,16]
    shapeDict['Pole'] = 1, [(0,0,0),(0,5,-5),(0,2,-8),(0,0,-6),(0,-2,-8),
                        (0,-5,-5),(0,0,0)],[0,1,2,3,4,5,6]
    shapeDict['root'] = 1, [(0,0,0.0810633),(0,-0.0476478,0.0655809),
                        (0,-0.0770958,0.0250494),(0,-0.0770958,-0.0250508),
                        (0,-0.0476478,-0.0655821),(0,0,-0.0810633),
                        (0,0.0476478,-0.0655821),(0,0.0770958,-0.0250508),
                        (0,0.0770958,0.0250494),(0,0.0476478,0.0655809),
                        (0,0,0.0810633),(0,0,1.821054),
                        (0,0.356796,1.936983),(0,0.577308,2.24049),
                        (0,0.577308,2.615652),(0,0.356796,2.919159),
                        (0,0,3.035094),(0,-0.356796,2.919159),
                        (0,-0.577308,2.615652),(0,-0.577308,2.24049),
                        (0,-0.356796,1.936983),(0,0,1.821054)],[0,1,
                        2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
                        17,18,19,20,21]
    shapeDict['pyramid'] = 1, [(0,-2.238214,0),(2.89093,0,0),(0,2.238214,0),
                        (0,0,-2.23821),(2.89093,0,0),(0,0,2.23821),
                        (0,-2.238214,0),(0,0,-2.23821),(0,2.238214,0),
                        (0,0,2.23821)],[0,1,2,3,4,5,6,7,8,9]
    return shapeDict[key]

def crvShape_(key,name_):
    """Get Shape Dictionary

    Arguments:
        key (sting): Shape name string
        name_ (string): 

    Returns:
        dictionary : Curve information.

    """
    shapeDict = getShape_(key)
    crv_ = pm.curve(d=shapeDict[0],
                    p=shapeDict[1],
                    k=shapeDict[2],
                    n=name_)
    return crv_

def space_(name_, suffix_=None, parent_=None):
    if not suffix_:
        suffix_ = 'Grp'      
    space_ = pm.createNode('transform',
                        n='{0}{1}'.format(name_,suffix_),
                        p=parent_)
    return space_

def offGrp_(object_):
    """object Offset Position Group.

    Arguments:
        object_ (object): Offset object

    Returns:
        Group :  offset Group

    """
    _name = object_.name()
    offset = space_(_name, parent_=object_)
    if object_.getParent():
        _parent = object_.getParent()
        pm.parent(offset, _parent)
    else:
        pm.parent(offset, w=1)
    pm.parent(object_, offset)
    return offset

def hierarchy_(object_):
    """objects Hierarchy Constructure.

    Arguments:
        object_ (list): object to be hierarchyed

    Returns:
        None : None

    """
    for i,obj in enumerate(object_):
        if i>0:
            pm.parent(obj, object_[i-1])

def dupJoint(joints,type_):
    """Joint Duplicate.

    Arguments:
        joints (list) : joint to be copied
        type_ (string) : 'FK' or 'IK' or 'Drv'

    Returns:
        Jnts : copied joint

    """
    Jnts = []
    for j in joints:
        dup = pm.duplicate(j,po=1)
        pm.parent(dup,w=1)
        pm.rename(dup,'{0}{1}Jnt'.format(j.name(),type_))
        Jnts.append(dup[0])
    hierarchy_(Jnts)
    return Jnts

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
    
def IKHandle_(name_,st,en,ikPos,pole):
    ikh = pm.ikHandle(sj=st,ee=en,sol='ikRPsolver',
                      n='{0}IKH'.format(name_))
    pm.poleVectorConstraint(pole,ikh[0])
    QM.MCon(pm.ls(ikPos,ikh[0]),t_=1,maintain=1)
    return ikh[0]

def Ctrl(joints,type_=None):
    """Ctrls Create.

    Arguments:
        joints (list) : Ctrl Position Object

    Returns:
        ctrls : Create Ctrls

    """
    ctrls = []
    for i,j in enumerate(joints):
        if type_ == 'FK':
            shape_ = 'square'
        elif type_ == 'IK':
            shape_ = 'pyramid'
        else:
            shape_ = type_
        name_ = '{0}{1}Ctrl'.format(j.name(),type_)
        ctrl = crvShape_(shape_,name_)
        pm.matchTransform(ctrl,j)
        ctrls.append(ctrl)
    if type_ == 'FK':
        hierarchy_(ctrls)
    [offGrp_(c) for c in ctrls]
    return ctrls

def setPreffered_(joints):
    rz_ = 0.1
    for j in joints:
        for a in ['X','Y','Z']:
            angle_ = j.attr('preferredAngle{0}'.format(a))
            if angle_.get()<0:
                angle_.set(angle_.get()*-1)
        j.rz.set(j.rz.get()+rz_)
        pm.joint(j,e=1,spa=1)
        j.rz.set(j.rz.get()-rz_)
            
        
    
sel = pm.ls(sl=1,fl=1,r=1)
joints = getChildren_(sel[0], type_='joint')
if len(joints)>4:
    [root,st,md,en,tip] = joints
    iklist = [st,md,en,tip]
    sublist = [st,md,en]
else:
    tip=None
    [root,st,md,tip] = joints
    iklist = [st,md,tip]
    sublist = [st,md]

# create joints
IKJoints = dupJoint(iklist,'IK')
subJoints = list(map(lambda a: dupJoint([a],'Sub'),sublist))
[pm.parent(subJoints[i],j) for i,j in enumerate(sublist)]

# create control
RootCtrl_ = Ctrl([root],type_='root')
FKCtrl_ = Ctrl(sublist,type_='FK')
IKCtrl_ = Ctrl([tip],type_='IK')
FKOff_ = list(map(lambda a: offGrp_(a),FKCtrl_))
[pm.rename(FKOff_[i],'{0}OffGrp'.format(c.name())) for i,c in enumerate(FKCtrl_)]

# create pos
pos_ = list(map(lambda a: space_(a.name(), suffix_='Pos'),iklist))
[pm.matchTransform(pos_[i],j) for i,j in enumerate(iklist)]
hierarchy_(pos_)
aimPos = space_(st.name(), suffix_='AMPos',parent_=FKCtrl_[0])
pvPos = space_(st.name(), suffix_='PVPos',parent_=aimPos)
pvPos.ty.set(0.1)
aimUpVec = space_(IKCtrl_[0].name(), suffix_='AMUpVec',parent_=IKCtrl_[0])
grp = space_(st.name(), suffix_='Grp')
CtrlGrp = space_(st.name(), suffix_='CtrlGrp',parent_=grp)
sys = space_(st.name(), suffix_='SysGrp',parent_=grp)

setPreffered_(IKJoints)
pm.aimConstraint(IKCtrl_[0], aimPos, mo=1, wut='objectrotation', wuo=aimUpVec)
ikh_ = IKHandle_(st.name(),IKJoints[0],IKJoints[-1],IKCtrl_[0],pvPos)
[QM.MCon(pm.ls(j,pos_[i]),t_='t',r_='r',maintain=True) for i,j in enumerate(IKJoints)]
[p.t >> FKOff_[i].getParent().t for i,p in enumerate(pos_[:-1])]
[p.r >> FKOff_[i].getParent().r for i,p in enumerate(pos_[:-1])]

pm.parent(pm.ls(FKOff_[0].getParent(),pos_[0],IKCtrl_[0].getParent(),IKJoints[0]),RootCtrl_[0])
pm.parent(RootCtrl_[0].getParent(),CtrlGrp)
pm.parent(ikh_,sys)
