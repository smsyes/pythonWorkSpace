import pymel.core as pm

sel = pm.ls(sl=1,fl=1,r=1)

def getsetjo(item_, target_):
    itemjo_ = item_.jo.get()
    target_.jo.set(itemjo_)

div_ = len(sel) / int(2)

for i,item in enumerate(sel[:int(div_)]):
    getsetjo(item, sel[int(div_+i)])


