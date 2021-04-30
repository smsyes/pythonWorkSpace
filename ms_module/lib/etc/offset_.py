from pymel.core import *
import pymel.core.datatypes as dt

# name convention
def name_(object_):
    _name = '_'.join(object_.split('_')[:-1])
    return _name


def offset_(object_, num_=None):
    _name = name_(object_)
    type_ = ['offset', 'space']
    
    if num_:
        for i in range(num_):
            number = i+1
            pad_ = padding_('num', number)
            if i > 0:
                _type = 1
                _parent = offset
            if i == 1:
                parent(offset, w=1)
            else:
                _type = 0
                _parent = object_
            join_name = '_'.join([_name, type_[_type], pad_])
            offset = dag_node(join_name, parent_=_parent)
        parent(object_, offset)
    return offset


# padding string
def padding_(type_, num_):
    if type_ == 'alpha':
        pad_ = string.ascii_uppercase[num_]
    if type_ == 'num':
        pad_ = str(num_).zfill(2)
    return pad_


def dag_node(_name, parent_=None):
    if not parent_:
        parent_ = None
    dag = createNode('transform', n=_name, p=parent_)
    return dag


selObject = ls(sl=1,fl=1,r=1)
for i in selObject:
    offset = offset_(i, num_=2)

