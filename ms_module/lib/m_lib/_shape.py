import pymel.core as pm

sel = pm.ls(sl = 1)

for i,object in enumerate(sel):
    hi = pm.listRelatives(object, c=1)[0]
    shapeName = '{}{}'.format(object.name(),'Shape')
    if hi.name() != shapeName:
        pm.rename(hi, shapeName)
    print 'shape name replace =', hi
        