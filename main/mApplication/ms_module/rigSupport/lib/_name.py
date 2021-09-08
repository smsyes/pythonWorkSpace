# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.


__AUTHOR__ = 'minsung'
__UPDATE__ = 20210707

:Example:
from lib.m_lib import NurbsCurveNode
reload(NurbsCurveNode)

blah blah blah blah blah blah
blah blah blah blah blah blah
============================================================================"""
#
# when start coding 3 empty lines.
#
from pymel.core import *
from lib import _check

reload(_check)

def padding(num_):
    pad_ = str(num_).zfill(2)
    return pad_

def renamer(object_,
            name_=None, 
            prefix_=None, 
            suffix_=None):
    if name_:
        make_name(object_, name_)
    if prefix_:
        append_name(object_, prefix_, mode=0)
    if suffix_:
        append_name(object_, suffix_, mode=1)

def make_name(object_, name_):
    if object_:
        for i,obj in enumerate(object_):
            pad_ = padding(i+1)
            makeName_ = '{}_{}'.format(name_,pad_)
            obj.rename(makeName_)

def append_name(object_, name_, mode=None):
    if object_:
        for obj in object_:
            if mode ==0:
                obj.rename('{}_{}'.format(name_,obj))
            if mode ==1:
                obj.rename('{}_{}'.format(obj,name_))

def change_name(oldName_, newName_):
    sel_ = ls(sl=1,r=1,fl=1)
    if sel_:
        for sel in sel_:
            changeName = sel.replace(oldName_, newName_)
            sel.rename(changeName)

def namespaceConvert(object_, prefix):
    object_ = PyNode(object_)
    if _check.checkAttr(object_, 'Prefix'):
        pass
    else:
        selns = object_.namespace()
        nls_ = namespaceInfo(selns,ls=1, lod=1)
        for i in nls_:
            new_ = i.name().replace(selns, prefix)
            rename(i, new_)
        namespace(rm=selns)
        addAttr(object_, longName="Prefix",dataType="string")
        prefixAttr = object_.attr("Prefix")
        prefixAttr.set(prefix)