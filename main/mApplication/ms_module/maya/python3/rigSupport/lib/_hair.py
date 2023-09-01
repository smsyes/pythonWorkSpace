import pymel.core as pm

def OutputCrvRename(curves):
    for i in curves:
        shape_ = i.getShape()
        flc = shape_.create.listConnections()[0]
        DynCrv = flc.startPositionMatrix.listConnections()[0]
        name_ = DynCrv.name().replace('Dyn','Out')
        pm.rename(i, name_)

def wires(objects):
    num = len(objects)
    half = num/2
    items = sel[:half]
    targets = sel[half:]
    [pm.wire(item, w=targets[i])for i,item in enumerate(items)]

sel = pm.ls(sl=1,fl=1,r=1)
# OutputCrvRename(sel)
# wires(sel)


