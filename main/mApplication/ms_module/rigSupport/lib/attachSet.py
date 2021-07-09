# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from collections import OrderedDict
from lib import _joint
from lib import _node
from lib import _name
from lib import _connect
from lib import _control
from lib import _curve
from lib import _transform

reload(_joint)
reload(_node)
reload(_name)
reload(_connect)
reload(_control)
reload(_curve)
reload(_transform)


class AttachSet():
    def __init__(self, name_, *args, **kwargs):
        self.base_name = name_
        self.sel = ls(sl=1, fl=1, r=1)

        prefixList = ['attach', 'attach']
        suffixList = ['CTL', 'JNT']

        attachGRPs = self.attach_structure(self.base_name)

        ordict_ = OrderedDict()
        nulls = _curve.curve_at_null(self.sel[0])
        ordict_['CTLs'] = _control.control_(nulls, 'octah')
        ordict_['JNTs'] = _joint.object_at_joint(nulls)
        delete(nulls)

        for i,value in enumerate(ordict_.values()):
            _name.renamer(value,
                        name_=self.base_name, 
                        prefix_=prefixList[i], 
                        suffix_=suffixList[i]
                        )

        CTL_off = [_node.offset_(CTL, num_=2) for CTL in ordict_['CTLs']]
        JNT_off = [_node.offset_(JNT, num_=2) for JNT in ordict_['JNTs']]
        JNT_spc = [JNT.getParent() for JNT in ordict_['JNTs']]
        _connect.subtract(ordict_['CTLs'])
        self.connect_attrs(ls(ordict_['CTLs'], JNT_spc),
                            't', 't')
        self.connect_attrs(ls(ordict_['CTLs'], JNT_spc),
                            'r', 'r')
        self.connect_attrs(ls(ordict_['CTLs'], JNT_spc),
                            's', 's')
        self.poci_connect(ls(self.sel[0], CTL_off))

        [parent(CTL, attachGRPs['CTL']) for CTL in CTL_off]
        [parent(JNT, attachGRPs['JNT']) for JNT in JNT_off]


    def connect_attrs(self, object_, output, input):
        items, targets = _transform.divide_in_two(object_)
        for i, item in enumerate(items):
            _connect.connect_attr(item, output, targets[i], input)
    
    def attach_structure(self, name_):
        GRPDict = OrderedDict()
        GRPDict['attach'] = _node.space_('{}_{}_'.format('attach',name_))
        GRPDict['CTL'] = _node.space_('attach_CTL_', parent_=GRPDict['attach'])
        GRPDict['JNT'] = _node.space_('attach_JNT_', parent_=GRPDict['attach'])
        return GRPDict

    def poci_connect(self, object_):
        item = object_[0]
        target = object_[1:]
        _shape = item.getShape()
        param_ = _curve.cvs_at_param(_shape)
        for i,param in enumerate(param_):
            POCI = _node.po_crv_info(_shape)
            setAttr('{}.parameter'.format(POCI), param)
            _connect.connect_attr(POCI, 'p', target[i], 't')


