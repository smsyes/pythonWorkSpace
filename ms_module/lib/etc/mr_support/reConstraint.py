from pymel.core import *

def divide_in_two(object_):
    divideNum = len(object_)/2
    items = object_[:divideNum]
    targets = object_[divideNum:]
    return items, targets

def constraint_(*args, **kwargs):
    if kwargs['type'] == 'parent':
        Const_ = parentConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'point':
        Const_ = pointConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'orient':
        Const_ = orientConstraint(args, maintainOffset=kwargs['mo'])
    if kwargs['type'] == 'scale':
        Const_ = scaleConstraint(args, maintainOffset=kwargs['mo'])
    return Const_


def constraints_(object_, type_, mo_):
    sets_ = sets(n='{}_const_set'.format(type_))
    items, targets = divide_in_two(object_)
    for i, item in enumerate(items):
        const_ = constraint_(item, targets[i], type=type_, mo=mo_)
        sets_.add(const_)
        

def constListConnections(object_):
    source_ = []
    target_ = []
    for i,object in enumerate(object_):
        for i in listConnections(object,p=1):
            if i.split('.')[-1] == 'parentMatrix[0]':
                if objExists(i.split('.')[0]):
                    constSource = PyNode(i.split('.')[0])
                    source_.append(constSource)
            if i.split('.')[-1] == 'parentInverseMatrix[0]':
                if objExists(i.split('.')[0]):
                    constTarget = i.split('.')[0]
                    target_.append(constTarget)
    print 'Source Count is',len(source_), 'Target Count is',len(target_)
    return source_, target_


def NewConst_(sourceList, targetList):
    objectList = ls(sourceList, targetList)
    constType = ['parent', 'scale']
    sets(n='const_set')
    for i in constType:
        constraints_(objectList, i, 1)
    
    
# Existing Linked List
# selObject = ls(sl=1, fl=1, r=1) 
# source_, target_ = constListConnections(selObject)

# Attach constraints to new objects
# NewConst_(source_, target_)


    
    
    
    