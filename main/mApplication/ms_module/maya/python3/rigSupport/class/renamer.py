# -*- coding: utf-8 -*-
"""============================================================================
Renamer Script
============================================================================"""
from maya import cmds
import string


# change
def Change(old_,new_,item_):
    oldName_ = item_.split('|')[-1]
    newName_ = oldName_.replace(old_,new_)
    return newName_


# padding #
def Padding(rename_, num_):
    if '#' in rename_:
        slot_ = rename_.count('#')
        pad_ = str(num_+1).zfill(slot_)
        newName_ = rename_.replace(slot_*'#', pad_)
    if '@' in rename_:
        pad_ = string.ascii_uppercase[num_]
        newName_ = rename_.replace('@', pad_)
    
    return newName_

if '#' in rename_:
    slot_ = rename_.count('#')
    pad_ = str(num_+1).zfill(slot_)
    name_ = rename_.replace(slot_*'#', pad_)
if '@' in rename_:
    pad_ = string.ascii_uppercase[num_]
    name_ = rename_.replace('@', pad_)


# prefix suffix %
def PrefixSuffix(rename_,item_):
    pre_ = ''
    suf_ = ''
    oldName_ = item_.split('|')[-1]
    if rename_.split('%')[0]:
        pre_ = rename_.split('%')[0]
    if rename_.split('%')[-1]:
        suf_ = rename_.split('%')[-1]
    if not '%' in rename_:
        newName_ = rename_
    else:
        newName_ = pre_+oldName_+suf_
    return newName_


def Renamer(sel, rename_=None):
    for i,item in enumerate(sel):
        item_ = cmds.ls(item)[0]
        if '>>' in rename_:
            old_ = rename_.split('>>')[0]
            new_ = rename_.split('>>')[-1]
            newName_ = Change(old_,new_,item_)
        elif '#' in rename_ or '@' in rename_:
            newName_ = Padding(rename_, i)
        elif '%' in rename_:
            newName_ = PrefixSuffix(rename_,item_)
        else:
            newName_ = rename_
        cmds.rename(item_, newName_)


# if old and new function == rename insert '>>'
# if padding function == rename insert '#'
# if pre&suf function == rename insert '%'

sel = cmds.ls(sl=1,r=1,uid=1)
Renamer(sel, 'TTT%GGG')


