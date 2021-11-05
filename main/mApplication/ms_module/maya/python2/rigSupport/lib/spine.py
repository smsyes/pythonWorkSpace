# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
spine FK IK setting

__AUTHOR__ = 'minsung'
__UPDATE__ = 20210708

:Example:
from lib.spine import Spine
reload(Spine)
hyb = Spine(name_ = 'base', up_=None)

Select the top of the joint chain and execute it
return IK number : 5, FK number : joint chain number
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
from lib import _matrix
from lib import _curve
from lib import _transform

reload(_joint)
reload(_node)
reload(_name)
reload(_connect)
reload(_control)
reload(_matrix)
reload(_curve)


class Spine():
    def __init__(self, name_, up_=None, *args, **kwargs):

        self.base_name = name_
        self.sel = ls(sl=1, r=1, fl=1)

        spineGRPs = self.spine_structure(self.base_name)

        ordict_ = OrderedDict()
        prefixList = ['base', 'FK', 'IK', 'FK', 'IK', 'IK_space', 'IK_upVec', 
                      'IK_bind', 'IK', 'IK_upVec', 'FK_IK', 'FK_IK', 'FK_IK']
        suffixList = ['JNT', 'JNT', 'JNT', 'CTL', 'CRV', 'LOC', 'LOC', 
                      'JNT', 'CTL', 'CRV', 'PRBL', 'BLCL', 'RVS']

        ordict_['baseJNTs'] = _joint.duplicate_joint(self.sel[0])
        ordict_['FKJNTs'] = _joint.duplicate_joint(self.sel[0])
        ordict_['IKJNTs'] = _joint.duplicate_joint(self.sel[0])
        ordict_['FKCTLs'] = _control.control_(ordict_['FKJNTs'], 'cube')        
        _connect.chain_structure(ordict_['baseJNTs'])
        _connect.chain_structure(ordict_['IKJNTs'])
        _connect.chain_structure(ordict_['FKCTLs'])
        ordict_['IKCRV'] = [_curve.object_cv_curve(ordict_['IKJNTs'], 
                                                  dgree_=1)]
        _curve.rebuild_curve(ordict_['IKCRV'],
                    ch=1,
                    rpo=1,
                    rt=0,
                    end=1,
                    kr=2,
                    kcp=0,
                    kep=1,
                    kt=0,
                    s=2,
                    d=3,
                    tol=0.01
                    )
        ordict_['IKLOC'] = [_node.locator_(JNT) for JNT in ordict_['IKJNTs']]
        ordict_['IKupVec'] = [_node.locator_(JNT) for JNT in ordict_['IKJNTs']]
        IKGuideCRV = [_curve.object_cv_curve(ordict_['IKupVec'], 
                                            dgree_=1)]
        _curve.rebuild_curve(IKGuideCRV,
                    ch=1,
                    rpo=1,
                    rt=0,
                    end=1,
                    kr=0,
                    kcp=0,
                    kep=1,
                    kt=0,
                    s=2,
                    d=1,
                    tol=0.01
                    )
        ordict_['IKBindJNT'] = _curve.curve_at_joint(IKGuideCRV[0])
        _joint.joint_orient(ordict_['IKBindJNT'])
        [parent(JNT, w=1) for JNT in ordict_['IKBindJNT']]
        ordict_['IKCTLs'] = _control.control_(ordict_['IKBindJNT'], 'circle')
        
        if up_:
            if up_ == 'x':
                upTrans = 'tx'
            elif up_ == 'y':
                upTrans = 'ty'
            elif up_ == 'z':
                upTrans = 'tz'
        else:
            upTrans = 'tz'

        [LOC.setAttr(upTrans, 3) for LOC in ordict_['IKupVec']]
        delete(IKGuideCRV)
        ordict_['IKupVecCRV'] = [_curve.object_cv_curve(ordict_['IKupVec'], 
                                                       dgree_=1)]
        _curve.rebuild_curve(ordict_['IKupVecCRV'],
                            ch=1,
                            rpo=1,
                            rt=0,
                            end=1,
                            kr=2,
                            kcp=0,
                            kep=1,
                            kt=0,
                            s=2,
                            d=3,
                            tol=0.01
                            )

        for i,value in enumerate(ordict_.values()):
            _name.renamer(value,
                    name_=self.base_name, 
                    prefix_=prefixList[i], 
                    suffix_=suffixList[i]
                    )

        
        PRBL_list, BLCL_list = self.IK_FK_Blend(ls(ordict_['IKJNTs'], 
                                                   ordict_['FKJNTs']), 
                                                   ordict_['baseJNTs'])
        ordict_['PRBLs'] = PRBL_list
        ordict_['BLCLs'] = BLCL_list
        ordict_['RVS'] = ls(_node.reverse_())
        
        _connect.one_to_n_connect(ls(spineGRPs['spine'], ordict_['PRBLs']), 'FK_IK', 'weight')
        _connect.one_to_n_connect(ls(spineGRPs['spine'], ordict_['BLCLs']), 'FK_IK', 'blender')
        self.connect_attrs(ls(spineGRPs['spine'], ordict_['RVS']), 'FK_IK', 'ix')
        self.connect_attrs(ls(spineGRPs['spine'], spineGRPs['FK_CTL']), 'FK_IK', 'v')
        self.connect_attrs(ls(ordict_['RVS'], spineGRPs['IK_CTL']), 'ox', 'v')
        
        # FK Setting
        FK_off_space = [_node.offset_(i, num_=2) for i in ordict_['FKCTLs']]
        FK_cnt_space = [_node.insert_space(CTL, 
                                         'cnt') for CTL in ordict_['FKCTLs']]
        FK_spc_space = [CTL.getParent(2) for CTL in ordict_['FKCTLs']]
        self.connect_attrs(ls(ordict_['FKCTLs'], 
                            ordict_['FKJNTs']), 
                            'r', 'r')
        _matrix.matrixConsts(ls(ordict_['FKCTLs'], 
                            ordict_['FKJNTs']), 
                            'local',
                            t='t',
                            r='r',
                            s='s')

        # IK Setting
        IK_off_space = [_node.offset_(CTL, 
                                     num_=2) for CTL in ordict_['IKCTLs']]
        IK_loc_offset = [_node.offset_(LOC, 
                                      num_=2) for LOC in ordict_['IKLOC']]
        upVec_offset = [_node.offset_(LOC, 
                                     num_=2) for LOC in ordict_['IKupVec']]
        IK_bind_offset = [_node.offset_(LOC, 
                                       num_=2) for LOC in ordict_['IKBindJNT']]
        _curve.param_at_objectPositions(ls(ordict_['IKCRV'], 
                                          IK_loc_offset))
        _curve.param_at_objectPositions(ls(ordict_['IKupVecCRV'], 
                                          upVec_offset))
        self.IK_Axis(ordict_['IKCTLs'], 
                     IK_loc_offset, ordict_['IKLOC'], ordict_['IKupVec'])
        _matrix.matrixConsts(ls(ordict_['IKLOC'], 
                               ordict_['IKJNTs']),
                               'local',
                               t='t',
                               r='jointOrient',
                               s='s')
        # [JNT.setAttr('jointOrient', (0,0,0)) for JNT in ordict_['IKJNTs']]
        _matrix.matrixConsts(ls(ordict_['IKCTLs'], 
                               IK_bind_offset),
                               'local',
                               t='t',
                               r='jointOrient',
                               s='s')
                               
        

        JNTs = ls(ordict_['baseJNTs'][0], ordict_['FKJNTs'][0], ordict_['IKJNTs'][0])
        CRVs = ls(ordict_['IKCRV'], ordict_['IKupVecCRV'])
        [parent(JNT, spineGRPs['bind_JNT']) for JNT in IK_bind_offset]
        [parent(JNT, spineGRPs['JNT']) for JNT in JNTs]
        [parent(CRV, spineGRPs['CRV']) for CRV in CRVs]
        parent(FK_off_space[0], spineGRPs['FK_CTL'])
        [parent(CTL, spineGRPs['IK_CTL']) for CTL in IK_off_space]
        [parent(LOC, spineGRPs['IK_space']) for LOC in IK_loc_offset]
        [parent(LOC, spineGRPs['IK_upVec']) for LOC in upVec_offset]
        
        bindList = ls(ordict_['IKCRV'], ordict_['IKupVecCRV'])

        for bind in bindList:
            _joint.bindSkin_(ls(ordict_['IKBindJNT'],bind),
                            n='{}_skinCluster'.format(self.base_name),
                            tsb=False,
                            bm=0,
                            sm=0,
                            nw=1,
                            mi=1,
                            dr=4.0,
                            )


    def connect_attrs(self, object_, output, input):
        items, targets = _transform.divide_in_two(object_)
        for i, item in enumerate(items):
            _connect.connect_attr(item, output, targets[i], input)
    
    def connect_pairBlend(self, items_, target_, PRBL_list, BLCL_list):
        items, targets = _transform.divide_in_two(items_)
        for i,item in enumerate(items):
            _connect.connect_attrs([item, PRBL_list[i]], 't', 'it1')
            _connect.connect_attrs([item, PRBL_list[i]], 'r', 'ir1')
            _connect.connect_attrs([item, BLCL_list[i]], 's', 'c2')
            _connect.connect_attrs([targets[i], PRBL_list[i]], 't', 'it2')
            _connect.connect_attrs([targets[i], PRBL_list[i]], 'r', 'ir2')
            _connect.connect_attrs([targets[i], BLCL_list[i]], 's', 'c1')
            _connect.connect_attrs([PRBL_list[i], target_[i]], 'ot', 't')
            _connect.connect_attrs([PRBL_list[i], target_[i]], 'or', 'r')
            _connect.connect_attrs([BLCL_list[i], target_[i]], 'output', 's')
    
    
    def IK_FK_Blend(self, items_, target_):
        PRBLs = [_node.pairBlend_() for i in target_]
        BLCLs = [_node.blendColors_() for i in target_]
        self.connect_pairBlend(items_, target_, PRBLs, BLCLs)
        return PRBLs, BLCLs

    def IK_Axis(self, IK_CTL, IK_LOC_off, IK_LOC, upVec_LOC, up=None):
        if up:
            if up=='x':
                up_=(1,0,0)
            if up=='y':
                up_=(0,1,0)
            if up=='z':
                up_=(0,0,1)
        else:
            up_=(0,0,1)

        _matrix.matrixConsts(ls(IK_CTL[0],
                    IK_LOC_off[0]), 
                    'local',
                    r='jointOrient')
                            
        for i,spc in enumerate(IK_LOC[:-1]):
            aimItem = spc
            aimTarget = IK_LOC_off[i+1]
            aimUpVec = upVec_LOC[i+1]
            aimConstraint(aimItem, aimTarget, mo=1, 
                        aimVector=(-1,0,0), upVector=up_, 
                        worldUpType='object', worldUpObject=aimUpVec)


    def spine_structure(self, name_):
        GRPDict = OrderedDict()
        GRPDict['spine'] = _node.space_('{}_{}_'.format('spine',name_))
        GRPDict['CTL'] = _node.space_('CTL_', 
                                     parent_=GRPDict['spine'])
        GRPDict['FK_CTL'] = _node.space_('FK_CTL_', 
                                        parent_=GRPDict['CTL'])
        GRPDict['IK_CTL'] = _node.space_('IK_CTL_', 
                                        parent_=GRPDict['CTL'])
        GRPDict['JNT'] = _node.space_('JNT_', 
                                     parent_=GRPDict['spine'])
        GRPDict['bind_JNT'] = _node.space_('bind_JNT_', 
                                           parent_=GRPDict['JNT'])
        GRPDict['CRV'] = _node.space_('CRV_', 
                                     parent_=GRPDict['spine'])
        GRPDict['motion'] = _node.space_('motion_', 
                                         parent_=GRPDict['spine'])
        GRPDict['IK_motion'] = _node.space_('IK_motion_', 
                                           parent_=GRPDict['motion'])
        GRPDict['IK_space'] = _node.space_('IK_space_', 
                                           parent_=GRPDict['IK_motion'])
        GRPDict['IK_upVec'] = _node.space_('IK_upVec_', 
                                           parent_=GRPDict['IK_motion'])
        addAttr(GRPDict['spine'], 
                ln="FK_IK", 
                nn="FK / IK", 
                at="enum", 
                en="IK:FK:", 
                k=1)
        return GRPDict


