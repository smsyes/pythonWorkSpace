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
import string
import sys
import os
import math
import random 
from collections import OrderedDict


def blendshape_target_list(blendshape_):
    if not isinstance(blendshape_, list):
        blendshape_ = ls(blendshape_)[0]
    index_list = [0] + blendshape_.weightIndexList()
    base_object = blendshape_.getBaseObjects()[0]
    target_list = []
    attr_list = []
    index_len = len(index_list)
    for index in index_list:
        attr = aliasAttr( '{0}.weight[{1}]'.format( blendshape_, index ), 
                query = True )
        if attr == '':
            print 'empty'
        else:
            print attr
            attr_full_name = '{}.{}'.format(blendshape_, attr)
            target_list.append(attr_full_name)
            attr_list.append(attr)
    print 'Index Len {}.'. format(index_len)
    return attr_list, target_list, index_len


def connection_source_list(target_list):
    source_plug_list = []
    for i in target_list:
        source_plug = listConnections(i, d=0, p=1)
        if source_plug:
            source_plug_list.append(source_plug)
            print 'Connection Target = {}\nConnection Source  = {}'.format(i, 
                    source_plug[0])
        else:
            pass
    return source_plug_list
            
                    
attr_list, target_list, index_len = blendshape_target_list('face_target')
source_plug_list = connection_source_list(target_list)
comb_target_plug_list = connection_source_list(source_list)





















        