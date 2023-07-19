import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)

items_ = sel[:-1]


for i in items_:
    if not i.listConnections(s=1,d=0,type='animCurveUL'):
        i_ = i.listConnections(s=1,d=0,type='blendWeighted')[0]
    else:
        i_ = i
    
    drive_ = i_.listConnections(s=1,d=0,type='animCurveUL')
    
    num_ = 0
    for d in drive_:
        getNum_= d.keyTimeValue.getNumElements()
        values_ = [d.keyTimeValue[n].get()[1] for n in range(getNum_)]
    
        min_ = min(values_)
        max_ = max(values_)

        pm.select(sel[-1],r=1)
        attrName_ = '{}{}'.format(i.name(),num_)
        pm.addAttr(ln=attrName_,at='double',k=1,min=0,max=1)

        v_ = 0
        for m in [min_, max_]:
            pm.setDrivenKeyframe(sel[-1].attr(attrName_),cd=d.o,dv=m,v=v_)
            v_ +=1
        num_ +=1



# dir(bw_.input.__class__)
