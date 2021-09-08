# Module Build Rebuild Connection 
from pymel.core import *
from collections import OrderedDict
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
    def __init__(self, object_, prefix, Mode_, *args, **kwargs):

        self.path_ = _path.path_(dir_="lib")
        self.fileName = "BuildInfo.json"

        self.object_ = object_
        self.prefix = prefix
        self.Mode_ = Mode_

        self.BRControl(self.prefix, self.Mode_)


    def importCNTInfo(self):
        filePath = os.path.join(self.path_, self.fileName)
        with open(filePath) as f:
            data_ = json.load(f)
        return data_
            
    def BRControl(self, prefix, Mode_):
        CNTData = self.importCNTInfo()

        BuildType = CNTData["BuildType"]
        buildMode = BuildType[Mode_]
        Module = buildMode["Module"]

        Modules_ = Module.keys()
        for mod in Modules_:
            MData = Module[mod]
            if self.object_.getAttr('Module') == str(mod):
                for item in MData["Item"]:
                    for target in MData["Target"][item]:
                        if Mode_ == "Build":
                            item_ = PyNode('{}:{}'.format(prefix, str(item)))
                            target_ = PyNode('{}{}'.format(prefix, str(target)))
                        elif Mode_ == "Rebuild":
                            item_ = PyNode('{}{}'.format(prefix, str(item)))
                            target_ = PyNode('{}:{}'.format(prefix, str(target)))
                        type_ = MData["Data"][item][target]["Type"]
                        attr_ = MData["Data"][item][target]["Attr"]
                        
                        if type_ == "Local":
                            _matrix.MTransform(item_, target_, attr_)
                            
                        if type_ == "Connect":
                            getAttr_ = item_.getAttr(attr_[0])
                            targetAttr_ = target_.attr(attr_[0])
                            targetAttr_.set(getAttr_)
                                
