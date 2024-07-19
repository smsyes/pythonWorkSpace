#-*- coding: utf-8 -*-
"""
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20200204

:Example:
from rig.Core import Unit
reload(Unit)
"""

import pymel.core as pm

sel = pm.ls(sl=1,r=1) 
shape_ = sel[0].getShape()
cvnum_ = shape_.numCVs()
ikh_ = shape_.ws.listConnections()[0]
stJoint_ = ikh_.startJoint.listConnections()[0]
joints_ = stJoint_.listRelatives(ad=1,typ='joint') + [stJoint_]
joints_.reverse()









dir(stJoint_.__class__)
