from pymel.core import *


def po_crv_info(object_, name_):
    _shape = object_.getShape()
    _node = createNode('pointOnCurveInfo', n='{}PC'.format(name_))
    connect_attr(_shape, 'ws', _node, 'ic')
    return _node
    
    
    
sel = ls(sl=1, fl=1, r=1) 

baseName = ''.join([sel[0].name().split('IK')[0], 'IK'])

def po_crv_info(object_, name_):
    _node = shadingNode('distanceBetween', as=1, n='{}DB'.format(name_))
    connect_attr(object_, 'result.position', _node, 'point{}'.format())
    return _node

