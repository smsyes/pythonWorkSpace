import maya.cmds as cmds

from collections import OrderedDict

#_______________________________________________________________________________
class spineDic_:
    def __init__(self, num_):

        node_ = OrderedDict()
        node_['RMAP'] = 'remapValue'
        node_['MULT'] = 'multiplyDivide'
        node_['PLS'] = 'plusMinusAverage'
        node_['NULL'] = 'transform'
        node_['POCI'] = 'pointOnCurveInfo'
        node_['DMTX'] = 'decomposeMatrix'
        node_['MAT'] = 'multMatrix'
        nodes_ = node_.keys()

        name_ = OrderedDict()
        name_['type'] = ['fit', 'space', 'init', 'twist', 'FK', 'local', 'upVec', 'param']
        name_['suffix'] = ['LOC', 'CTL', 'GP', 'sub', 'main', 'JNT']
        name_['global'] = ['input', 'ik', 'OS', 'scale', 'end']
        names_ = name_.keys()

        part_ = OrderedDict()
        num_list = range(num_)
        for p in num_list:
            if p == num_list[0]:
                part_[p] = 'spine'
            if p == num_list[-1]:
                part_[p] = 'chest'
            if p in num_list[1:num_/2]:
                part_[p] = 'spine_sub'
            if p in num_list[num_/2:-1]:
                part_[p] = 'chest_sub'
        parts_ = part_.keys()

    def load_dic(self, dic):
        if not dic:
            print nodes_, names_, parts_
        return dic
