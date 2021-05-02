from pymel.core import *

def choiceNode_(name_):
    _node = createNode('choice', n='{}_CHOI'.format(name_))
    return _node


def conditionNode_(name_):
    _node = createNode('condition', n='{}_COND'.format(name_))
    return _node
    
    
def addVectorAttr(node_, name_):
    addAttr(node_,ln=name_,at='double3')
    addAttr(node_,ln='{}X'.format(name_),at='double',p=name_)
    addAttr(node_,ln='{}Y'.format(name_),at='double',p=name_) 
    addAttr(node_,ln='{}Z'.format(name_),at='double',p=name_)


def connect_attr(*args):
    connectAttr('{}.{}'.format(args[0], args[1]),
                '{}.{}'.format(args[2], args[3]))    
        
def shadowREN(object_, name_):
    CHOINode_ = choiceNode_(name_)
    CONDNode_ = conditionNode_(name_)
    
    addVectorAttr(CHOINode_, 'normal')
    addVectorAttr(CHOINode_, 'shadowBody')
    addVectorAttr(CHOINode_, 'shadowLeg')
    addVectorAttr(CHOINode_, 'CHOIOutput')
    
    setAttr('{}.normal'.format(CHOINode_), [1,0,0])
    setAttr('{}.shadowBody'.format(CHOINode_), [0,1,0])
    setAttr('{}.shadowLeg'.format(CHOINode_), [0,0,1])
    setAttr('{}.colorIfFalseR'.format(CONDNode_), 0)
    setAttr('{}.secondTerm'.format(CONDNode_), 1)
    
    connect_attr(CHOINode_, 'normal', CHOINode_, 'i[0]')
    connect_attr(CHOINode_, 'shadowBody', CHOINode_, 'i[1]')
    connect_attr(CHOINode_, 'shadowLeg', CHOINode_, 'i[2]')
    connect_attr(CHOINode_, 'output', CHOINode_, 'CHOIOutput')
    connect_attr(CHOINode_, 'CHOIOutputX', CONDNode_, 'colorIfTrueR')
    connect_attr(CHOINode_, 'CHOIOutputX', CONDNode_, 'colorIfFalseG')

    if objExists('shadow_mesh_all'):
        connect_attr(CHOINode_, 'CHOIOutputY', 'shadow_mesh_all', 'v')
        
    if objExists('shadow_mesh_half'):
        connect_attr(CHOINode_, 'CHOIOutputZ', 'shadow_mesh_half', 'v')
        
    if objExists('MOD'):
        connect_attr(CONDNode_, 'outColorR', 'MOD', 'v')
            
    if objExists('body_mesh_GRP'):
        connect_attr(CONDNode_, 'outColorG', 'body_mesh_GRP', 'v')
        
    if objExists('head_mesh_GRP'):
        connect_attr(CONDNode_, 'outColorG', 'head_mesh_GRP', 'v')
        
    if '{}.shadowMeshVis'.format(object_) in object_.listAttr():
        connect_attr(object_, 'shadowMeshVis', CHOINode_, 'selector')
    
    if objExists('main_M_CTL'):
        if 'main_M_CTL.MOD' in object_.listAttr():
            connect_attr('main_M_CTL', 'MOD', CONDNode_, 'firstTerm')


# Select and run the REN Null group
sel_ = ls(sl=1,fl=1,r=1)
name_ = sel_[0].name()
shadowREN(sel_[0], name_)


