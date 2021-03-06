# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
create main FK / IK swtiching set

__AUTHOR__ = 'minsung'
__UPDATE__ = 20210708

:Example:
from rigSupport.lib import mainSet
reload(mainSet)
main_ = mainSet.MainSet(name_ = 'name')

Select the top of the two joint chains and execute
return joint number : 5, FK setting, IK setting(const follow)
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from collections import OrderedDict


from rigSupport.lib import _transform
from rigSupport.lib import _joint
from rigSupport.lib import _node
from rigSupport.lib import _name
from rigSupport.lib import _connect
from rigSupport.lib import _control
from rigSupport.lib import _matrix

try:
    from imp import *
except:
    pass

reload(_transform)
reload(_joint)
reload(_node)
reload(_name)
reload(_connect)
reload(_control)
reload(_matrix)


class MainSet():
    def __init__(self, name_, *args, **kwargs):

        self.base_name = name_
        self.sel = ls(sl=1, r=1, fl=1)


        _joint.linear_spacing_joint(self.sel[0],
                                    3, 
                                    e=True, 
                                    axis='x'
                                    )

        mainGRPs = self.main_structure(name_)

        ordict_ = OrderedDict()
        prefixList = ['main', 'main_FK', 'main_IK', 'main_FK', 
                    'main_IK', 'FK_IK', 'FK_IK', 'FK_IK']
        suffixList = ['JNT', 'JNT', 'JNT', 'CTL', 
                    'CTL', 'PRBL', 'BLCL', 'RVS']

        ordict_['baseJNTs'] = _joint.duplicate_joint(self.sel[0])        
        ordict_['FKJNTs'] = _joint.duplicate_joint(self.sel[0])     
        ordict_['IKJNTs'] = _joint.duplicate_joint(self.sel[0])
        ordict_['FKCTLs'] = _control.control_(ordict_['FKJNTs'], 'circle')
        ordict_['IKCTLs'] = _control.control_(ordict_['IKJNTs'], 'circle')
        PRBLs, BLCLs = self.IK_FK_Blend(ls(ordict_['IKJNTs'], 
                                           ordict_['FKJNTs']), 
                                           ordict_['baseJNTs'])
        ordict_['PRBLs'] = PRBLs
        ordict_['BLCLs'] = BLCLs
        ordict_['RVS'] = ls(_node.reverse_())
        for i,value in enumerate(ordict_.values()):
            _name.renamer(value,
                    name_=self.base_name, 
                    prefix_=prefixList[i], 
                    suffix_=suffixList[i])

        # FK Setting
        _connect.chain_structure(ordict_['FKCTLs'])
        FKCTLoffset = [_node.offset_(i, num_=2) for i in ordict_['FKCTLs']]
        # self.connect_attrs(ls(ordict_['FKCTLs'], ordict_['FKJNTs']), 'r', 'r')
        _matrix.matrixConsts(ls(ordict_['FKCTLs'], ordict_['FKJNTs']), 
                             'local',
                             t='t',
                             r='r',
                             s='s')

        # IK Setting
        IKCTLoffset = [_node.offset_(i, num_=2) for i in ordict_['IKCTLs']]
        _matrix.matrixConsts(ls(ordict_['IKCTLs'], ordict_['IKJNTs']),
                             'local',
                             t='t',
                             r='r',
                             s='s')
                             
        IKConstList = {0:[ordict_['IKCTLs'][0],
                        ordict_['IKCTLs'][-1],
                        ordict_['IKCTLs'][2].getParent(2)],
                    1:[ordict_['IKCTLs'][0],
                        ordict_['IKCTLs'][2],
                        ordict_['IKCTLs'][1].getParent(2)],
                    2:[ordict_['IKCTLs'][-1],
                        ordict_['IKCTLs'][2],
                        ordict_['IKCTLs'][3].getParent(2)]}
        IKConsts = [_connect.n_to_one_constrain(i,'parent',mo_=1) for i in IKConstList.values()]
        [i[0].setAttr('interpType', 2) for i in IKConsts]

        [parent(JNTs_[0], mainGRPs['JNT']) for JNTs_ in ordict_.values()[:3]]
        parent(ordict_['FKCTLs'][0].getParent(2), mainGRPs['FK_CTL'])
        [parent(CTLs_.getParent(2), mainGRPs['IK_CTL']) for CTLs_ in ordict_['IKCTLs']]

        _connect.one_to_n_connect(ls(mainGRPs['main'], ordict_['PRBLs']), 'FK_IK', 'weight')
        _connect.one_to_n_connect(ls(mainGRPs['main'], ordict_['BLCLs']), 'FK_IK', 'blender')
        self.connect_attrs(ls(mainGRPs['main'], ordict_['RVS']), 'FK_IK', 'ix')
        self.connect_attrs(ls(mainGRPs['main'], mainGRPs['FK_CTL']), 'FK_IK', 'v')
        self.connect_attrs(ls(ordict_['RVS'], mainGRPs['IK_CTL']), 'ox', 'v')

    
    def connect_attrs(self, object_, output, input):
        items, targets = _transform.divide_in_two(object_)
        for i, item in enumerate(items):
            _connect.connect_attr(item, output, targets[i], input)

    def connect_pairBlend(self, items_, target_, PRBL_list, BLCL_list):
        items, targets = _transform.divide_in_two(items_)
        for i,item in enumerate(items):
            self.connect_attrs(ls(item, PRBL_list[i]), 't', 'it1')
            self.connect_attrs(ls(item, PRBL_list[i]), 'jointOrient', 'ir1')
            self.connect_attrs(ls(item, BLCL_list[i]), 's', 'c2')
            self.connect_attrs(ls(targets[i], PRBL_list[i]), 't', 'it2')
            self.connect_attrs(ls(targets[i], PRBL_list[i]), 'jointOrient', 'ir2')
            self.connect_attrs(ls(targets[i], BLCL_list[i]), 's', 'c1')
            self.connect_attrs(ls(PRBL_list[i], target_[i]), 'ot', 't')
            self.connect_attrs(ls(PRBL_list[i], target_[i]), 'or', 'jointOrient')
            self.connect_attrs(ls(BLCL_list[i], target_[i]), 'output', 's')

    def IK_FK_Blend(self, items_, target_):
        PRBLs = [_node.pairBlend_() for i in target_]
        BLCLs = [_node.blendColors_() for i in target_]
        self.connect_pairBlend(items_, target_, PRBLs, BLCLs)
        return PRBLs, BLCLs

    def main_structure(self, name_):
        GRPDict = OrderedDict()
        GRPDict['main'] = _node.space_('{}_{}_'.format('main',name_))
        addAttr(GRPDict['main'], 
                ln="FK_IK", 
                nn="FK / IK", 
                at="enum", 
                en="IK:FK:", 
                k=1)
        GRPDict['CTL'] = _node.space_('CTL_', parent_=GRPDict['main'])
        GRPDict['FK_CTL'] = _node.space_('FK_CTL_', parent_=GRPDict['CTL'])
        GRPDict['IK_CTL'] = _node.space_('IK_CTL_', parent_=GRPDict['CTL'])
        GRPDict['JNT'] = _node.space_('JNT_', parent_=GRPDict['main'])
        return GRPDict
