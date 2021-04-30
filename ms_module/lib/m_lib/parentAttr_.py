# parent attr setting
import string

def parentAttr_(t = None, r = None, s = None):
    sel = cmds.ls(sl = 1, fl = 1, r = 1)
    
    alpha_ = list(string.ascii_lowercase)
    offset_ = 'offsetAttr'
    parent_ = 'parentAttr'
    
    target_ = sel[-1]
    childe_ = cmds.listRelatives(target_, c = 1, typ = 'transform')
    cmds.addAttr(childe_[0], ln = 'parent', at = 'enum', en = ':'.join(sel[:-1]), k = 1)
    
    if t:
        trans_chocie_ = cmds.createNode('choice', n = '{}_parent_choice'.format(target_))
        cmds.connectAttr('{}.{}'.format(childe_[0], 'parent'), '{}.{}'.format(trans_chocie_ ,'selector'))
        cmds.connectAttr('{}.{}'.format(trans_chocie_, 'o'), '{}.{}'.format(childe_[0] ,'t'))
    if r:
        rot_chocie_ = cmds.createNode('choice', n = '{}_parent_choice'.format(target_))
        cmds.connectAttr('{}.{}'.format(childe_[0], 'parent'), '{}.{}'.format(rot_chocie_ ,'selector'))
        cmds.connectAttr('{}.{}'.format(rot_chocie_, 'o'), '{}.{}'.format(childe_[0] ,'r'))
    if s:
        scal_chocie_ = cmds.createNode('choice', n = '{}_parent_choice'.format(target_))
        cmds.connectAttr('{}.{}'.format(childe_[0], 'parent'), '{}.{}'.format(scal_chocie_ ,'selector'))
        cmds.connectAttr('{}.{}'.format(rot_chocie_, 'o'), '{}.{}'.format(childe_[0] ,'s'))
    
        
    for i, object in enumerate(sel):
        
        if object != target_:
            item_ = object
            offset_attr_ = '{}_{}'.format(offset_, alpha_[i])
            parent_attr_ = '{}_{}'.format(parent_, alpha_[i])
            cmds.addAttr(target_, ln = offset_attr_, at = 'matrix')
            cmds.addAttr(childe_, ln = parent_attr_, at = 'matrix')
    
            multM = cmds.shadingNode('multMatrix', au = 1, n = '{}_{}'.format(item_, 'parent_UNKN'))
            decomM = cmds.shadingNode('decomposeMatrix', au = 1, n = '{}_{}'.format(item_, 'parent_DMTX'))
            
            # get offsetAttr value
            offset_multM = cmds.shadingNode('multMatrix', au = 1, n = '{}_{}'.format(item_, 'offset_UNKN'))
            cmds.connectAttr('{}.{}'.format(item_,'wm[0]'), '{}.{}'.format(multM, 'i[0]'))
            cmds.connectAttr('{}.{}'.format(target_,'wim[0]'), '{}.{}'.format(multM, 'i[1]'))
            cmds.connectAttr('{}.{}'.format(childe_[0], 'wm[0]'), '{}.{}'.format(offset_multM ,'i[0]'))
            cmds.connectAttr('{}.{}'.format(item_, 'wim[0]'), '{}.{}'.format(offset_multM ,'i[1]'))
            cmds.connectAttr('{}.{}'.format(offset_multM, 'o'), '{}.{}'.format(target_ ,offset_attr_))
            cmds.disconnectAttr('{}.{}'.format(offset_multM,'o'), '{}.{}'.format(target_ ,offset_attr_))
            cmds.delete(offset_multM)
            
            # set matrix const
            cmds.disconnectAttr('{}.{}'.format(item_,'wm[0]'), '{}.{}'.format(multM, 'i[0]'))
            cmds.connectAttr('{}.{}'.format(target_ ,offset_attr_), '{}.{}'.format(multM,'i[0]'))
            cmds.disconnectAttr('{}.{}'.format(target_,'wim[0]'), '{}.{}'.format(multM, 'i[1]'))
            cmds.connectAttr('{}.{}'.format(item_,'wm[0]'), '{}.{}'.format(multM,'i[1]'))
            cmds.connectAttr('{}.{}'.format(target_ ,'wim[0]'), '{}.{}'.format(multM ,'i[2]'))
            cmds.connectAttr('{}.{}'.format(multM ,'o'), '{}.{}'.format(childe_[0], parent_attr_))
            cmds.connectAttr('{}.{}'.format(childe_[0], parent_attr_), '{}.{}'.format(decomM ,'imat'))
            
            # connect transform
            if t:
                cmds.connectAttr('{}.{}'.format(decomM, 'ot'), '{}.i[{}]'.format(trans_chocie_ ,i))
            if r:
                cmds.connectAttr('{}.{}'.format(decomM, 'or'), '{}.i[{}]'.format(rot_chocie_ ,i))
            if s:
                cmds.connectAttr('{}.{}'.format(decomM, 'os'), '{}.i[{}]'.format(scal_chocie_ ,i))
        
parentAttr_(t = 't', r = 'r', s = None)