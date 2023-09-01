import pymel.core as pm

def setDriven_(iAttr,tAttr,dv_,v_):
    pm.setDrivenKeyframe(tAttr,cd=iAttr,dv=dv_,v=v_)

def addAttr_(object_, attrName_):
    pm.addAttr(object_,ln=attrName_,at='double',min=0,max=1,dv=0,k=1)
    return object_.attr(attrName_)

def setValue_(object_,subName_,time_,dValue_):
    for i in object_[:-1]:
        attrName_ = '{}_{}'.format(i.name(),subName_)
        attr_ = addAttr_(object_[-1], attrName_)
        for t,t_ in enumerate(time_):
            pm.currentTime(t_)
            setDriven_(i.ry,attr_,i.ry.get(),dValue_[t])

def mirrorGetSet(object_):
    for i in object_:
        replaceName_ = i.name().replace('_L','_R')
        replaceObject_ = pm.PyNode(replaceName_)
        replaceObject_.t.set(i.t.get())
        replaceObject_.r.set(i.r.get())
    
sel = pm.ls(sl=1,fl=1,r=1)
setValue_(sel,'bo',[0,20],[0,1])
# mirrorGetSet(sel)

    
    
