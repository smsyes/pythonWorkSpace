import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)

items_ = sel[:-1]

for i in items_:
    anim_ = i.listConnections(s=1,d=0,type='animCurveUL')[0]
    getNum_= anim_.keyTimeValue.getNumElements()
    values_ = [anim_.keyTimeValue[i].get()[1] for i in range(getNum_)]
    min_ = min(values_)
    max_ = max(values_)

    pm.select(sel[1],r=1)
    pm.addAttr(ln=i.name(),at='double',k=1,min=0,max=1)
    addedAttr_ = sel[1].attr(sel[0].name())

    v_ = 0
    for i in [min_, max_]:
        pm.setDrivenKeyframe(addedAttr_,cd=anim_.o,dv=i,v=v_)
        v_ +=1




# dir(.__class__)
