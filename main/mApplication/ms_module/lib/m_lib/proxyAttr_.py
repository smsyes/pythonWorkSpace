import maya.cmds as cmds
from collections import OrderedDict


def proxyAttr(attr_name, type_):
sel_ = cmds.ls(sl = 1, fl = 1, r = 1)
item_ = sel_[0]
target_ = sel_[1]
proxy_ = '{}.{}'.format(item_, type_)
type_ = cmds.attributeQuery(type_, node = item_, at = True)
print 'Attribute Type = ', type_
cmds.select(cl = True)
cmds.select(target_)
cmds.addAttr(ln = attr_name, proxy = proxy_, k = True, at = type_)

proxyAttr('parent', 'parent')