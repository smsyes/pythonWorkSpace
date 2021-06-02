import maya.cmds as cmds
from collections import OrderedDict

# shoulder and thigh quat twist set

nodes_ = OrderedDict()
nodes_['DMTX'] = 'decomposeMatrix'
nodes_['UNKN'] = 'multMatrix'
nodes_['QUAT'] = 'quatToEuler'


cnt_ = OrderedDict()
cnt_['wm'] = 'i[0]'
cnt_['pim'] = 'i[1]'
cnt_['o'] = 'imat'
cnt_['or'] = 'r'
cnt_['m'] = 'imat'
cnt_['oqx'] = 'iqx'
cnt_['oqw'] = 'iqw'
cnt_['orx'] = 'rx'


def type_(_object):
    if str(type(_object)) == "<type 'tuple'>":
        _object = [_object]
        print 'tuple >> list'
    elif str(type(_object)) == "<type 'list'>":
        print 'list'
    else:
        pass

def connect_(_item, _target, _in, _out):
    cmds.connectAttr('{}.{}'.format(_item, _in), '{}.{}'.format(_target, _out))

def get_set_xform(getItem, setTarget):
    pos = cmds.xform(getItem, q = True, t = True, ws = True)
    rot = cmds.xform(getItem, q = True, ws= True, ro = True)
    cmds.select(setTarget)
    cmds.xform( r = True, t = pos )
    cmds.xform( r = True, ro = rot )
    cmds.select(cl = True)

def local_loc_OS(shul, name_):
    loc_ = cmds.spaceLocator(n = '{}_{}'.format(name_, 'stretch_loc'))
    null_name = ['CS', 'OS']
    null_list = []
    for i in null_name:
        null_ = cmds.createNode('transform', n = '{}_{}'.format(loc_[0], i))
        null_list.append(null_)
        if i == 'OS':
            cmds.parent(null_list[0], null_)
            cmds.parent(loc_[0], null_list[0])
            get_set_xform(shul, null_)
    return loc_[0]

def node_(name_):
    DMTX_name = ['DMTX', 'twist_DMTX']
    DMTXlist = []
    for i in DMTX_name:
        DMTX_ = cmds.shadingNode(nodes_['DMTX'], au = 1, n = '{}_{}'.format(name_, i))
        DMTXlist.append(DMTX_)
        
    UNKN_ = cmds.shadingNode(nodes_['UNKN'], au = 1, n = '{}_{}'.format(name_, 'twist_UNKN'))
    QUAT_ = cmds.shadingNode(nodes_['QUAT'], au = 1, n = '{}_{}'.format(name_, 'twist_QUAT'))
    return DMTXlist, UNKN_, QUAT_


def shulTwist(name_):
    sel = cmds.ls(sl=1, fl=1, r=1)
    
    root_ = sel[0]
    shul = sel[1]
    
    loc_ = local_loc_OS(shul, name_)
    DMTXlist, UNKN_, QUAT_ = node_(name_)
    
    
    itemList = [root_, shul, UNKN_, DMTXlist[0], loc_, DMTXlist[1], DMTXlist[1], QUAT_]
    targetList = [UNKN_, UNKN_, DMTXlist[0], loc_, DMTXlist[1], QUAT_, QUAT_, shul]
    
    for i in range(len(cnt_.keys())):
        connect_(itemList[i], targetList[i], cnt_.keys()[i], cnt_[cnt_.keys()[i]])





name_ = 'L_upper_leg'
shulTwist(name_)