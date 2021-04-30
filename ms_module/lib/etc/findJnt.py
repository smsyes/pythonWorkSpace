from pymel.core import *

sel = ls(sl = 1)
jnt_ = listRelatives(sel, ad = 1, typ = 'joint')
select(jnt_)
