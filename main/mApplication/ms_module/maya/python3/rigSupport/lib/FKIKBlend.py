from maya import cmds

# list range rematch result
def ListChuck(arr, n):
    return [arr[i: i + n] for i in range(0, len(arr), n)]
    
def FKIKBlend(sel):
    arr_ = ListChuck(sel, 7)
    
    for i,item in enumerate(arr_[-1]):
        bm_ = cmds.createNode('blendMatrix',n='{}_bm'.format(item))
        mm_ = cmds.createNode('multMatrix',n='{}_mm'.format(item))
        dm_ = cmds.createNode('decomposeMatrix',n='{}_dm'.format(item))
        
        cmds.select(item,r=1)
        cmds.addAttr(ln='FKIK', at='double', min=0, max=1, dv=0, k=1)
        cmds.select(cl=1)
        
        cmds.connectAttr(arr_[0][i] + '.wm', bm_ + '.inputMatrix')
        cmds.connectAttr(arr_[1][i] + '.wm', bm_ + '.target[0].targetMatrix')
        cmds.connectAttr(item + '.FKIK', bm_ + '.envelope')
        cmds.connectAttr(bm_ + '.outputMatrix', mm_ + '.matrixIn[0]')
        cmds.connectAttr(item + '.pim', mm_ + '.matrixIn[1]')
        cmds.connectAttr(mm_ + '.matrixSum', dm_ + '.inputMatrix')
        
        cmds.setAttr(item+'.jointOrientX', 0)
        cmds.setAttr(item+'.jointOrientY', 0)
        cmds.setAttr(item+'.jointOrientZ', 0)
        cmds.connectAttr(dm_ + '.ot', item + '.t')
        cmds.connectAttr(dm_ + '.or', item + '.r')
        cmds.connectAttr(dm_ + '.os', item + '.s')


# 1st:FKlist, 2st:IKlist, 3st:baselist
sel = cmds.ls(sl=1,r=1,fl=1)
FKIKBlend(sel)
