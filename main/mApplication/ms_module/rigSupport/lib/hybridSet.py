# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
hybrid FK IK setting

__AUTHOR__ = 'minsung'
__UPDATE__ = 20210708

:Example:
from lib.hybridSet import hybridSet
reload(hybridSet)
hyb = hybridSet.HybridSet(name_ = 'base', up_=None)

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
reload(_transform)


class HybridSet():
    def __init__(self, name_, up_=None, *args, **kwargs):

        self.base_name = name_
        self.sel = ls(sl=1, r=1, fl=1)
        
        hybridGRPs = self.hybrid_structure(self.base_name)

        ordict_ = OrderedDict()
        prefixList = ['FK', 'IK', 'FK', 'IK', 'IK_space', 
                    'IK_upVec', 'IK_bind', 'IK', 'IK_upVec']
        suffixList = ['JNT', 'JNT', 'CTL', 'CRV', 'LOC', 
                    'LOC', 'JNT', 'CTL', 'CRV']

        ordict_['FKJNTs'] = _joint.duplicate_joint(self.sel[0])
        ordict_['IKJNTs'] = _joint.duplicate_joint(self.sel[0])
        ordict_['FKCTLs'] = _control.control_(ordict_['FKJNTs'], 'cube')
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
        [parent(LOC,ordict_['IKLOC'][i]) for i,LOC in enumerate(ordict_['IKupVec'])]
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
        _joint.joint_orient(ordict_['IKBindJNT'],
                            e=True,
                            oj='xzy',
                            sao='zup',
                            zso=True
                            )
        
        [parent(JNT, w=1) for JNT in ordict_['IKBindJNT']]
        ordict_['IKCTLs'] = _control.control_(ordict_['IKBindJNT'], 'circle')
        
        upTrans = 'tz'
        if up_:
            if up_ == 'x':
                upTrans = 'tx'
            elif up_ == 'y':
                upTrans = 'ty'
            elif up_ == 'z':
                upTrans = 'tz'

        [LOC.setAttr(upTrans, 3) for LOC in ordict_['IKupVec']]
        [parent(LOC, w=1)for LOC in ordict_['IKupVec']]
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

        # FK Setting
        
        FK_off_space = [_node.offset_(i, num_=2) for i in ordict_['FKCTLs']]
        
        FK_cnt_space = [_node.insert_space(CTL,'cnt') for CTL in ordict_['FKCTLs']]
        FK_spc_space = [CTL.getParent(2) for CTL in ordict_['FKCTLs']]
        
        ordict_['FKJNTs'][0].setAttr('jointOrient', (0,0,0))
        _matrix.matrixConsts(ls(ordict_['FKCTLs'], 
                            ordict_['FKJNTs']),
                            'local',
                            t='t',
                            r='r',
                            s='s')
        self.connect_attrs(ls(ordict_['IKJNTs'], 
                            FK_off_space), 
                            't', 't'
                            )
        self.connect_attrs(ls(ordict_['IKJNTs'], 
                            FK_off_space), 
                            'r', 'r'
                            )

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
                               r='r',
                               s='s')
        [JNT.setAttr('jointOrient', (0,0,0)) for JNT in ordict_['IKJNTs']]
        _matrix.matrixConsts(ls(ordict_['IKCTLs'], 
                               IK_bind_offset),
                               'local',
                               t='t',
                               r='r',
                               s='s')

        JNTs = ls(ordict_['FKJNTs'][0], ordict_['IKJNTs'][0])
        CRVs = ls(ordict_['IKCRV'], ordict_['IKupVecCRV'])
        [parent(JNT, hybridGRPs['bind_JNT']) for JNT in IK_bind_offset]
        [parent(JNT, hybridGRPs['JNT']) for JNT in JNTs]
        [parent(CRV, hybridGRPs['CRV']) for CRV in CRVs]
        parent(FK_off_space[0], hybridGRPs['FK_CTL'])
        [parent(CTL, hybridGRPs['IK_CTL']) for CTL in IK_off_space]
        [parent(LOC, hybridGRPs['IK_space']) for LOC in IK_loc_offset]
        [parent(LOC, hybridGRPs['IK_upVec']) for LOC in upVec_offset]
        
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
                             r='r')
        
        IK_LOC.reverse()
        upVec_LOC.reverse()
        IK_LOC_off.reverse()
        for i,spc in enumerate(IK_LOC[:-1]):
            aimItem = spc
            aimTarget = IK_LOC_off[i+1]
            aimUpVec = upVec_LOC[i]
            aimConstraint(aimItem, aimTarget, mo=1, 
                        aimVector=(-1,0,0), upVector=up_, 
                        worldUpType='object', worldUpObject=aimUpVec)
        IK_LOC.reverse()
        upVec_LOC.reverse()
        IK_LOC_off.reverse()


    def hybrid_structure(self, name_):
        GRPDict = OrderedDict()
        GRPDict['hybrid'] = _node.space_('{}_{}_'.format('hybrid',name_))
        GRPDict['CTL'] = _node.space_('CTL_', 
                                     parent_=GRPDict['hybrid'])
        GRPDict['FK_CTL'] = _node.space_('FK_CTL_', 
                                        parent_=GRPDict['CTL'])
        GRPDict['IK_CTL'] = _node.space_('IK_CTL_', 
                                        parent_=GRPDict['CTL'])
        GRPDict['JNT'] = _node.space_('JNT_', 
                                     parent_=GRPDict['hybrid'])
        GRPDict['bind_JNT'] = _node.space_('bind_JNT_', 
                                           parent_=GRPDict['JNT'])
        GRPDict['CRV'] = _node.space_('CRV_', 
                                     parent_=GRPDict['hybrid'])
        GRPDict['motion'] = _node.space_('motion_', 
                                         parent_=GRPDict['hybrid'])
        GRPDict['IK_motion'] = _node.space_('IK_motion_', 
                                           parent_=GRPDict['motion'])
        GRPDict['IK_space'] = _node.space_('IK_space_', 
                                           parent_=GRPDict['IK_motion'])
        GRPDict['IK_upVec'] = _node.space_('IK_upVec_', 
                                           parent_=GRPDict['IK_motion'])
        return GRPDict
