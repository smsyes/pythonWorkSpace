# Module Build Rebuild Connection 
from pymel.core import *
import json
import os

from rigSupport.lib import _transform, _matrix, _node, _joint
from rigSupport import _path

try:
    from imp import *
except:
    pass

reload(_transform)
reload(_matrix)
reload(_node)
reload(_joint)

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
                        data_ = MData["Data"][item][target]
                        if "Attr" in data_.keys():
                            attr_ = data_["Attr"]
                        if "Type" in data_.keys():
                            type_ = data_["Type"]
                            if type_ == "Local":
                                _matrix.MTransform(item_, target_, attr_)
                            if type_ == "Connect":
                                getAttr_ = item_.getAttr(attr_[0])
                                targetAttr_ = target_.attr(attr_[0])
                                targetAttr_.set(getAttr_)
                        if "IK" in data_.keys():
                            ik_ = data_["IK"]
                            if ik_ == "RP":
                                IKJnt_ = _transform.getChildren_(target_, type_='joint')
                                _joint.RPIKHandle(target_.name(), IKJnt_, PV_, parent_)
                        if "PV" in data_.keys():
                            PV_ = data_["PV"]
                        if "Parent" in data_.keys():
                            parent_ = data_["Parent"]
                        if "Delete" in data_.keys():
                            delete_ = data_["Delete"]
                            if delete_:
                                delete('{}{}'.format(item_.name(), delete_))
                        
                        
                            
                        
                        

                        
                        
