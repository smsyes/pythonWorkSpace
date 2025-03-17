from maya import cmds
import string


def changeName(method_, name_):
    old_ = method_.split('>>')[0]
    new_ = method_.split('>>')[-1]
    return name_.replace(old_, new_)

def padding(num_, slot_, check_):
    if check_ == True:
        pad_ = string.ascii_uppercase[num_]
    if check_ == False:
        if not slot_:
            slot_ = 1
        pad_ = str(num_).zfill(slot_)
    return pad_


def makeName(method_, num_):
    if '#' in method_:
        slot_ = method_.count('#')
        pad_ = str(num_).zfill(slot_)
        name_ = method_.replace(slot_*'#', pad_)
    if '@' in method_:
        pad_ = string.ascii_uppercase[num_-1]
        name_ = method_.replace('@', pad_)
    return name_

def prefix_suffix(method_, name_):
    if method_.split('%')[0]:
        name_ = method_.split('%')[0] + name_
    if method_.split('%')[-1]:
        name_ = name_ + method_.split('%')[-1]
    return name_

def renamer(method_, list_):
    try:
        cmds.undoInfo(openChunk=True)
        
        for i,item in enumerate(list_):
            if '>>' in method_:
                name_ = cmds.ls(item)[0].split('|')[-1]
                name_ = changeName(method_, name_)
            if '#' in method_ or '@' in method_:
                name_ = makeName(method_, i+1)
            if '%' in method_:
                name_ = cmds.ls(item)[0]
                name_ = prefix_suffix(method_, name_)
                
            cmds.rename(cmds.ls(item)[0], name_)
            
    finally:
        cmds.undoInfo(closeChunk=True)

'''
replace Method : '>>'
makeName Method : num('#'), alpha('@')
prefix_suffix Method : prefix(pre%objectName) / suffix(objectName%suf)
'''
sel = cmds.ls(sl=1,r=1,uid=1)
method_ = '%suffix'
renamer(method_, sel)