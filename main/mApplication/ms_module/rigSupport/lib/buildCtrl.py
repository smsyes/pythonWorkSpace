# Module Build Rebuild Connection 
from pymel.core import *
import json
import os

from lib import _transform
from lib import _matrix
from lib import _node
import _path

reload(_transform)
reload(_matrix)
reload(_node)


class BuildControl():
    def __init__(self, prefix, Mode_, *args, **kwargs):

        self.path_ = _path.path_()
        fileName = "BuildInfo.json"
        filePath = os.path.abspath(os.path.join(self.path_, fileName))
        
        self.BRControl(filePath, prefix, Mode_)


    def importCNTInfo(self, fileName):
        with open(fileName) as f:
            data_ = json.load(f)
        return data_

    def delete_Mnode(self, object_):
        inputDM = _node.inputNode(object_, type='decomposeMatrix')
        inputMM = _node.inputNode(object_, type='multMatrix')
        delete(ls(inputDM, inputMM))
            
    def BRControl(self, jsonPath, prefix, Mode_):
        
        absPath = os.path.abspath(jsonPath)
        CNTData = self.importCNTInfo(absPath)
        Module = CNTData["Module"]
        Modules_ = Module.keys()
        MData_ = Module[Modules_[0]]
        MConst_ = MData_["MConst"]
        MConnect_ = MData_["Connect"]
        
        for i,item in enumerate(MConst_.keys()):
            IData_ = MConst_[item]
            Targets_ = IData_['Target']
            Types_ = IData_["Type"]
            Atts_ = IData_["Attr"]
            item = PyNode('{}:{}'.format(prefix, item))
            for t,target in enumerate(Targets_):
                
                target = PyNode(target)
                if Mode_ == 'Rebuild':
                    if Types_[t] == "Local":
                        _matrix.matrixConst(item, target,
                                            'local',
                                            t='t',
                                            r='r',
                                            s='s')
                    if Types_[t] == "Parent":
                        _matrix.matrixConst(item, target,
                                            'parent',
                                            t='t',
                                            r='r',
                                            s='s')
                elif Mode_ == 'Build':
                    self.delete_Mnode(target)
        
        
        for i,item in enumerate(MConnect_.keys()):
            IData_ = MConnect_[item]
            Targets_ = IData_['Target']
            Atts_ = IData_["Attr"]
            item = PyNode('{}:{}'.format(prefix, item))
            for t,target in enumerate(Targets_):
                target = PyNode(target)
                itemAttr = item.attr(Atts_[t])
                targetAttr = target.attr(Atts_[t])
                if Mode_ == 'Rebuild':
                    itemAttr.connectAttr(targetAttr)
                elif Mode_ == 'Build':
                    itemAttr.disconnect()