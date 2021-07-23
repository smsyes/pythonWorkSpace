from pymel.core import *

sel=ls(sl=1,r=1)

dir(sel[0])

if isinstance(sel, list):
    for i in sel:
        shape_ = i.getShape()
        follicle_ = shape_.listConnections()[0]
        follicle_.setAttr('overrideDynamics', 1)
        follicle_.setAttr('startCurveAttract', 1)
        FloatAttr_ = follicle_.attr('attractionScale')[1].getChildren()[1]
        PositionAttr_ = follicle_.attr('attractionScale')[0].getChildren()[0]
        FloatAttr_.set(0.2)
        PositionAttr_.set(0)
        print attr_

        
dir(follicle_)

