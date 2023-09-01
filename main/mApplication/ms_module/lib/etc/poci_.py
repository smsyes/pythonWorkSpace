
sel = cmds.ls(sl = 1)
crv_ = 'curve'
for i,name in enumerate(sel):
    baseName = name.split('_')[0]
    poci_ = cmds.createNode('pointOnCurveInfo', n = '{}_{}'.format(baseName, 'POCI'))
    cmds.setAttr('{}.{}'.format(poci_, 'parameter'), i)
    cmds.connectAttr('{}.{}'.format(crv_, 'ws'), '{}.{}'.format(poci_, 'ic'))
    cmds.connectAttr('{}.{}'.format(poci_, 'p'), '{}.{}'.format(name, 't'))