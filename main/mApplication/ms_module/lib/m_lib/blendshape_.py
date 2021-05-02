# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.
str to unicode
unicode to str
Get the shape of an object

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200624

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
import pymel.core.datatypes as dt
import sys
import os

blendshape_ = ls(sl=1)[0]

index_list = [0] + blendshape_.weightIndexList()
base_object = blendshape_.getBaseObjects()[0]

for index in index_list:
    old_name = aliasAttr( '{0}.weight[{1}]'.format( blendshape_, index ), query = True )
    new_name = old_name.split('_')
    print 'Found old name: ', index, new_name, old_name
    absolute_name = '{0}.weight[{1}]'.format( node_name, index )
    aliasAttr( new_name, absolute_name ) # Re-aliasing / Renaming occurs here.


























