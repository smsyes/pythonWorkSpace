#-*- coding: utf-8 -*-
"""=============================================================================
Module descriptions.
Get type-specific attributes

__AUTHOR__ = 'minsung'
__UPDATE__ = 20200206

:Example:
from rig.Core import Unit
reload(Unit)

blah blah blah blah blah blah 
blah blah blah blah blah blah 
============================================================================="""
#
# when start coding 3 empty lines.
#
import sys
import os
from ms_module.lib import get_
reload(get_)
#(add import something more...)
# front && back of classes 3 empty lines.
#
class get_(object):
    '''Class Descriptions.
    using multiple line remark.
    '''
    classProperty1 = None   # class variable
    classProperty2 = None   # class variable
    # front && back of function || method 1 empty line.
    def __init__(self, *args, **kwargs):
        '''Function || method descriptions.
        using multiple line remark.
        '''
        self._data = {}
        self._name = None
        self._type = None
    # magic method(builtin) block
    def __repr__(self):
        return self._name

    def __str__(self):
        return repr(self._type)

    def __getitem__(self, key):
        return self._data[key]

    def __setitem__(self, key, val):
        self._data[key] = val
    # properties block
    @property
    def name(self):
        return self._name
    
    @name.setter
    def name(self, value):
        self._name = value
    
    @property
    def type(self):
        return self._type

    @type.setter
    def type(self, value):
        self._type = value
    # classmethod && staticmethod block
    @classmethod
    def GetClassProperty1(cls):
        '''Function || method descriptions.
        using multiple line remark.
        '''
        return cls.classProperty1

    @classmethod
    def GetClassProperty2(cls):
        '''Function || method descriptions.
        using multiple line remark.
        '''
        return cls.classProperty2

    @staticmethod
    def StaticMethod(num1, num2):
        '''Function || method descriptions.
        using multiple line remark.
        '''
        return num1 * num2
    # instance method block
    def MethodA(self, *args, **kwargs):
        '''Function || method descriptions.
        using multiple line remark.
        '''
        pass

    def MethodB(self, *args, **kwargs):
        '''Function || method descriptions.
        using multiple line remark.
        '''
        pass



class MyAss(object):
    '''
    '''
    pass



class MyShit(MyAss):
    '''
    '''
    pass

def GetIntoAss(*shits):
    '''
    '''
    print 'He is Dead.'

def KickAss():
    '''
    '''
    pass