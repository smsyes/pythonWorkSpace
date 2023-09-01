#-*- coding: utf-8 -*-
"""=============================================================================
Module descriptions.
select object edge to curve

__AUTHOR__ = 'minsung'
__UPDATE__ = 220610

:Example:


blah blah blah blah blah blah 
blah blah blah blah blah blah 
============================================================================="""
#
# when start coding 3 empty lines.
#
import pymel.core as pm

sel = pm.ls(sl=1,r=1,fl=1)

edgeA_ = [5,36,58,80,102,124,146,168,190,212,236,267,289,311,333,355,377,399,421,443,471,492,505,526,544]
edgeB_ = [26,50,72,94,116,138,160,182,204,226,257,281,303,325,347,369,391,413,435,457,479,488,513,534,548]

for i in sel:
    for e in [edgeA_,edgeB_]:
        pm.select('{0}.e[{1}]'.format(i.name(),e[0]),r=1)
        for a in e:
            pm.select('{0}.e[{1}]'.format(i.name(),a),add=1)
        pm.polyToCurve(form=2,degree=3,conformToSmoothMeshPreview=1)
        